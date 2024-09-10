/*
import 'package:fin_dall/core/extensions/failure_extension.dart';
import 'package:fin_dall/core/widgets/common_empty_widget.dart';
import 'package:fin_dall/core/widgets/common_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

/// Paginated list
///
/// This widget is used to show a list of items with pagination.
///
/// [itemBuilder] is the function that will be called to build each item on success.
///
/// [firstLoadingWidget] is the widget to be shown while the first page is loading.
///
/// [fetch] is the function that will be called to fetch the items.
///
class PaginatedSliverList<T> extends StatelessWidget {
  final Widget Function(T item) itemBuilder;

  final Widget firstLoadingWidget;

  final PagingController<int, T> controller;

  const PaginatedSliverList({
    super.key,
    required this.itemBuilder,
    required this.firstLoadingWidget,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return PagedSliverList<int, T>(
      pagingController: controller,
      shrinkWrapFirstPageIndicators: true,
      builderDelegate: PagedChildBuilderDelegate<T>(
        firstPageProgressIndicatorBuilder: (context) => firstLoadingWidget,
        // The error is handle before
        firstPageErrorIndicatorBuilder: (context) {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.5,
            width: MediaQuery.sizeOf(context).width,
            child: CommonErrorWidget(
              failure: (controller.error as Failure),
              onRetry: controller.retryLastFailedRequest,
            ),
          );
        },
        noItemsFoundIndicatorBuilder: (context) => SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.5,
          width: MediaQuery.sizeOf(context).width,
          child: const Center(
            child: CommonEmptyWidget(),
          ),
        ),
        newPageErrorIndicatorBuilder: (context) => ListTile(
          title: Text(
              (controller.error as Failure).getUIMessage(context: context)),
          trailing: IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: controller.retryLastFailedRequest,
          ),
        ),
        itemBuilder: (context, item, index) {
          return itemBuilder(item);
        },
      ),
    );
  }
}
*/