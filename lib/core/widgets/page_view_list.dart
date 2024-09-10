
/*
import 'package:common_classes/common_classes.dart';
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
class PageViewList<T> extends StatelessWidget {
  final Widget Function(T item) itemBuilder;

  final Widget firstLoadingWidget;

  final PagingController<int, T> controller;

  const PageViewList({
    super.key,
    required this.itemBuilder,
    required this.firstLoadingWidget,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return PagedPageView<int, T>(
        pagingController: controller,
        scrollDirection: Axis.vertical,
        builderDelegate: PagedChildBuilderDelegate<T>(
          firstPageProgressIndicatorBuilder: (context) => firstLoadingWidget,
          // The error is handle before
          firstPageErrorIndicatorBuilder: (context) {
            return SizedBox(
              height: constrains.maxHeight,
              width: MediaQuery.sizeOf(context).width,
              child: CommonErrorWidget(
                failure: (controller.error as Failure),
                onRetry: controller.retryLastFailedRequest,
              ),
            );
          },
          noItemsFoundIndicatorBuilder: (context) => SizedBox(
            height: constrains.maxHeight,
            width: MediaQuery.sizeOf(context).width,
            child: const CommonEmptyWidget(),
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
    });
  }
}
*/