import 'package:fin_dall/core/error/failure.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/list_empty_result.dart';
import 'package:fin_dall/core/widgets/list_error_result.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class CustomPaginatedSeparatedList<T> extends StatelessWidget {
  final PagingController<int, T> controller;

  final Widget Function(T item) itemBuilder;

  final Widget Function() itemLoadingBuilder;

  final bool shrinkWrap;

  const CustomPaginatedSeparatedList({
    super.key,
    required this.controller,
    required this.itemBuilder,
    required this.itemLoadingBuilder,
    this.shrinkWrap = false,
  });

  @override
  Widget build(BuildContext context) {
    return PagedListView<int, T>.separated(
      shrinkWrap: shrinkWrap,
      separatorBuilder: (context, index) => const Divider(),
      pagingController: controller,
      builderDelegate: PagedChildBuilderDelegate<T>(
        firstPageErrorIndicatorBuilder: (context) => ListErrorResult(
          failure: controller.error as Failure,
          onRetry: controller.retryLastFailedRequest,
        ),
        firstPageProgressIndicatorBuilder: (context) => Column(
          children: List.generate(
            3,
            (index) => itemLoadingBuilder(),
          ),
        ),
        noItemsFoundIndicatorBuilder: (context) => const ListEmptyResult(),
        newPageErrorIndicatorBuilder: (context) => InkWell(
          onTap: controller.retryLastFailedRequest,
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
        ),
        itemBuilder: (context, item, index) {
          return itemBuilder(item);
        },
      ),
    );
  }
}
