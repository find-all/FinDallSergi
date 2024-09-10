import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/core/widgets/common_empty_widget.dart';
import 'package:fin_dall/core/widgets/common_error_widget.dart';
import 'package:flutter/material.dart';

/// Widget to show a list of items based on the state of a controller
///
/// [T] is the type of the items
///
/// [state] is the state of the controller
///
/// [itemLoadedBuilder] is the builder to show the item when it is loaded
///
/// [itemLoadingBuilder] is the builder to show the item when it is loading
///
/// [errorPadding] is the padding to show the error widget. Default is [EdgeInsets.all(20.0)]
///
/// [onRetry] is the function to be called when the user taps on the retry button
///
/// [onPullToRefresh] is the function to be called when the user pulls to refresh. If this is not null, the list will be scrollable
///
/// [searchPattern] is the function to be called to get the search pattern of an item. If this is not null, the list will be searchable
///
class ControllerStateList<T> extends StatelessWidget {
  final ControllerState<List<T>> state;

  final Widget Function(T item) itemLoadedBuilder;

  final Widget itemLoadingBuilder;

  final EdgeInsets errorPadding;

  final void Function()? onRetry;

  final Future<void> Function()? onPullToRefresh;

  final String Function(T item)? searchPattern;

  const ControllerStateList({
    super.key,
    required this.state,
    required this.itemLoadedBuilder,
    required this.itemLoadingBuilder,
    this.errorPadding = const EdgeInsets.all(20.0),
    this.onRetry,
    this.onPullToRefresh,
    this.searchPattern,
  });

  @override
  Widget build(BuildContext context) {
    switch (state) {
      case ControllerStateData<List<T>>(data: final items) when items.isEmpty:
        return Padding(
          padding: errorPadding,
          child: const CommonEmptyWidget(),
        );
      case ControllerStateData<List<T>>(data: final items):
        if (searchPattern != null) {
          return ControllerStateListWithSearch<T>(
            items: items,
            itemLoadedBuilder: itemLoadedBuilder,
            searchPattern: searchPattern!,
            onPullToRefresh: onPullToRefresh,
          );
        }

        if (onPullToRefresh != null) {
          return RefreshIndicator(
            onRefresh: onPullToRefresh!,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return itemLoadedBuilder(items[index]);
              },
            ),
          );
        }

        return ListView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return itemLoadedBuilder(items[index]);
          },
        );

      case ControllerStateError<List<T>>(error: final failure):
        return Padding(
          padding: errorPadding,
          child: CommonErrorWidget(
            failure: failure,
            onRetry: onRetry,
          ),
        );
      default:
        return ListView.builder(
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return itemLoadingBuilder;
          },
        );
    }
  }
}

class ControllerStateListWithSearch<T> extends StatefulWidget {
  final List<T> items;

  final Widget Function(T item) itemLoadedBuilder;

  final String Function(T item) searchPattern;

  final Future<void> Function()? onPullToRefresh;

  const ControllerStateListWithSearch({
    super.key,
    required this.items,
    required this.itemLoadedBuilder,
    required this.searchPattern,
    this.onPullToRefresh,
  });

  @override
  State<ControllerStateListWithSearch<T>> createState() =>
      _ControllerStateListWithSearchState<T>();
}

class _ControllerStateListWithSearchState<T>
    extends State<ControllerStateListWithSearch<T>> {
  late TextEditingController _controller;

  String? _search;

  @override
  void initState() {
    _controller = TextEditingController();
    _controller.addListener(() {
      setState(() {
        _search = _controller.text;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = _search == null || _search!.isEmpty
        ? widget.items
        : widget.items.where((element) {
            final pattern = widget.searchPattern(element);
            return pattern.toLowerCase().contains(_search!.toLowerCase());
          }).toList();
    return Column(
      children: [
        Card(
          color: context.theme.colorScheme.surface,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: context.loc.search,
                suffixIcon: const Icon(Icons.search),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Expanded(
          child: items.isEmpty
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Text(
                      context.loc.noSearchResults,
                      style: context.theme.textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              : widget.onPullToRefresh != null
                  ? RefreshIndicator(
                      onRefresh: widget.onPullToRefresh!,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return widget.itemLoadedBuilder(items[index]);
                        },
                      ),
                    )
                  : ListView.builder(
                      shrinkWrap: true,
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return widget.itemLoadedBuilder(items[index]);
                      },
                    ),
        ),
      ],
    );
  }
}
