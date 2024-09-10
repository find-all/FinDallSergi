import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/core/widgets/list_empty_result.dart';
import 'package:fin_dall/core/widgets/list_error_result.dart';
import 'package:fin_dall/core/widgets/paging_list/paging_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:visibility_detector/visibility_detector.dart';

/// A widget that displays a list of items that can be paginated
///
/// This widget is used to display a list of items that can be paginated. It uses a [PagingControllerProvider] to manage the state of the list.
///
/// [loadingTile] is the widget that is displayed when the list is loading
///
/// [itemBuilder] is a function that takes an item of type [T] and returns a widget that displays the item
///
/// [initialPage] is the page number that the list should start at.By default it is 1
///
/// [pageSize] is the number of items to fetch per page. By default it is 25
///
/// [fetch] is a function that takes a page number and a page size and returns a [Future<Result<List<T>>>] that fetches the items for that page
///
/// [separatorBuilder] is a function that takes an index and returns a widget that is displayed between items in the list. If not provided, no separator is displayed
///
/// [scrollController] is the controller that controls the scroll position of the list. If not provided, a new [ScrollController] is created
///
/// [shrinkWrap] is a boolean that determines whether the list should shrink wrap its contents. By default it is false
///
class PagingList<T> extends ConsumerWidget {
  final Widget loadingTile;

  final Widget Function(T item) itemBuilder;

  final int initialPage;

  final int pageSize;

  final Future<Result<List<T>>> Function(int page, int size) fetch;

  final Widget Function(BuildContext context, int index)? separatorBuilder;

  final ScrollController? scrollController;

  final bool shrinkWrap;

  const PagingList({
    super.key,
    required this.loadingTile,
    required this.itemBuilder,
    this.initialPage = 1,
    this.pageSize = 25,
    required this.fetch,
    this.separatorBuilder,
    this.scrollController,
    this.shrinkWrap = false,
  });

  @override
  Widget build(BuildContext context, ref) {
    // Controller initialization to manage the state of the list
    final pagingController = pagingControllerProvider(
      initialPage: initialPage,
      pageSize: pageSize,
      fetch: fetch,
    );

    final state = ref.watch(
      pagingController.select(
        (value) {
          return switch (value) {
            FirstPageLoading<T>() => value,
            FirstPageError<T>() => value,
            FirstPageEmpty<T>() => value,
            _ => null,
          };
        },
      ),
    );

    switch (state) {
      case FirstPageLoading<T>():
        return ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return loadingTile;
          },
        );

      case FirstPageError<T>(error: final failure):
        return ListErrorResult(
          failure: failure,
          onRetry: ref.read(pagingController.notifier).retryLastFailedRequest,
        );

      case FirstPageEmpty<T>():
        return const ListEmptyResult();

      default:
        return Consumer(
          builder: (context, ref, _) {
            final state = ref.watch(pagingController);

            final count = state.data.length + 1;

            if (separatorBuilder != null) {
              return PagingListSeparated(
                count: count,
                itemBuilder: (context, index) {
                  if (index >= state.data.length) {
                    if (state is PageError<T>) {
                      return ErrorNewPageWidget(
                        onRetry: ref
                            .read(pagingController.notifier)
                            .retryLastFailedRequest,
                      );
                    } else if (state is PageLoading<T>) {
                      return const LoadingNewPageWidget();
                    } else {
                      return const SizedBox(
                        height: 30,
                      );
                    }
                  }

                  final item = state.data[index];
                  // only if one of the last 5 items is visible, fetch next page
                  if (state.data.isNotEmpty &&
                      (state.data.length - index) < 5) {
                    return VisibilityDetector(
                      key: Key('fetching item $index'),
                      onVisibilityChanged: (visibilityInfo) {
                        var visiblePercentage =
                            visibilityInfo.visibleFraction * 100;

                        if (visiblePercentage != 100) return;

                        final state = ref.read(pagingController);

                        if (state is! PageError<T> && state is! LastPage<T> ||
                            state is! PageLoading<T>) {
                          ref
                              .read(
                                pagingController.notifier,
                              )
                              .fetchPage();
                        }
                      },
                      child: itemBuilder(item),
                    );
                  }
                  return itemBuilder(item);
                },
                separatorBuilder: separatorBuilder!,
                scrollController: scrollController,
                shrinkWrap: shrinkWrap,
              );
            }

            return PagingListNotSeparated(
              count: count,
              itemBuilder: (context, index) {
                if (index >= state.data.length) {
                  if (state is PageError<T>) {
                    return ErrorNewPageWidget(
                      onRetry: ref
                          .read(pagingController.notifier)
                          .retryLastFailedRequest,
                    );
                  } else if (state is PageLoading<T>) {
                    return const LoadingNewPageWidget();
                  } else {
                    return const SizedBox(
                      height: 30,
                    );
                  }
                }

                final item = state.data[index];
                // If index is at 75 % of the list, fetch next page

                return VisibilityDetector(
                  key: Key('fetching item $index'),
                  onVisibilityChanged: (visibilityInfo) {
                    final state = ref.read(pagingController);

                    var visiblePercentage =
                        visibilityInfo.visibleFraction * 100;

                    if (visiblePercentage == 100 &&
                        state is! PageError<T> &&
                        state is! LastPage<T>) {
                      ref
                          .read(
                            pagingController.notifier,
                          )
                          .fetchPage();
                    }
                  },
                  child: itemBuilder(item),
                );
              },
              scrollController: scrollController,
              shrinkWrap: shrinkWrap,
            );
          },
        );
    }
  }
}

class PagingListSeparated extends StatelessWidget {
  final int count;

  final Widget Function(BuildContext context, int index) itemBuilder;

  final Widget Function(BuildContext context, int index) separatorBuilder;

  final ScrollController? scrollController;

  final bool shrinkWrap;

  const PagingListSeparated({
    super.key,
    required this.count,
    required this.itemBuilder,
    required this.separatorBuilder,
    this.scrollController,
    this.shrinkWrap = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: count,
      itemBuilder: itemBuilder,
      separatorBuilder: separatorBuilder,
      controller: scrollController,
      shrinkWrap: shrinkWrap,
    );
  }
}

class PagingListNotSeparated extends StatelessWidget {
  final int count;

  final Widget Function(BuildContext context, int index) itemBuilder;

  final ScrollController? scrollController;

  final bool shrinkWrap;

  const PagingListNotSeparated({
    super.key,
    required this.count,
    required this.itemBuilder,
    this.scrollController,
    this.shrinkWrap = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: count,
      itemBuilder: itemBuilder,
      controller: scrollController,
      shrinkWrap: shrinkWrap,
    );
  }
}

/// A widget that displays a list of items that can be paginated

class ErrorNewPageWidget extends StatelessWidget {
  final void Function() onRetry;

  const ErrorNewPageWidget({super.key, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onRetry,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.loc.oppsSomethingWentWrong,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 4,
              ),
              const Icon(
                Icons.refresh,
                size: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoadingNewPageWidget extends StatelessWidget {
  const LoadingNewPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: CircularProgressIndicator(),
      ),
    );
  }
}
