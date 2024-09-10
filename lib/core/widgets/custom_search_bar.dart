// This Dart file defines a custom search bar widget using Flutter and Riverpod for state management.
// It demonstrates how to debounce search input to limit the frequency of search operations,
// handle various states of the search operation (initial, loading, success, error),
// and display search results or error messages accordingly.

import 'dart:async';

import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/utils/controller_state.dart'; // Importing utility classes for managing controller states.
import 'package:fin_dall/core/utils/result.dart'; // Importing a utility class for handling results of operations.
import 'package:fin_dall/core/widgets/list_empty_result.dart'; // Widget to display when no results are found.
import 'package:fin_dall/core/widgets/list_error_result.dart'; // Widget to display when an error occurs.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Importing Riverpod for state management.
import 'package:riverpod_annotation/riverpod_annotation.dart'; // Importing annotations for Riverpod.

part 'custom_search_bar.g.dart'; // Part directive for generated code.

@riverpod

/// A controller to manage search operations.
///
/// This controller handles search operations by debouncing the search input to limit the frequency of search operations.
///
/// It provides methods to perform search operations and manage the state of the search results.
///
/// The controller uses Riverpod for state management.
///
class SearchController<T> extends _$SearchController<T> {
  Timer? _debounce; // Timer for debouncing search input.

  @override
  ControllerState<List<T>> build({
    String? query, // The search query.
    required Future<Result<List<T>>> Function({required String query})
        fetch, // Function to fetch search results.
  }) {
    ref.onDispose(() {
      _debounce
          ?.cancel(); // Cancel the debounce timer when the controller is disposed.
    });

    if (query != null && query.isNotEmpty) {
      search(); // Perform the search operation.
      return ControllerStateLoading<List<T>>(); // Return loading state.
    }
    return ControllerStateInitial<
        List<T>>(); // Return initial state if query is empty.
  }

  Future<void> search() async {
    _debounce?.cancel(); // Cancel any existing debounce timer.
    state = const ControllerStateLoading(); // Set state to loading.

    _debounce = Timer(const Duration(milliseconds: 500), () async {
      // Debounce search operation.
      final result = await fetch(query: query!); // Fetch search results.
      result.when(
        success: (data) {
          state = ControllerStateData(data); // Set state to success with data.
        },
        error: (error) {
          state = ControllerStateError(error); // Set state to error.
        },
      );
    });
  }
}

/// Custom search widget.
///
/// This widget provides a custom search bar .
///
/// It fetches search results based on the query entered in the search bar.
///
/// The widget displays loading tiles while fetching results, and handles various states of the search operation.
///
///
/// Example Usage:
/// CustomSearchBar<ItemType>(
///   itemBuilder: (item, onPressed) => ListTile(
///     title: Text(item.title),
///     onTap: onPressed,
///   ),
///   loadingTile: CircularProgressIndicator(),
///   fetch: (query) => searchItems(query),
/// )
///
class CustomSearchBar<T> extends StatelessWidget {
  final Widget Function(T item, void Function() onPressed)
      itemBuilder; // Builder function for each search result item.
  final Widget loadingTile; // Widget to display while loading.
  final Future<Result<List<T>>> Function({required String query})
      fetch; // Function to fetch search results.

  final WidgetStateProperty<OutlinedBorder?>? barShape;
  final WidgetStateProperty<double?>? barElevation;
  final WidgetStateProperty<EdgeInsetsGeometry?>? barPadding;
  final WidgetStateProperty<Color?>? barBackgroundColor;
  final OutlinedBorder? viewShape;
  final bool isFullScreen;
  final BoxConstraints? viewConstraints;
  final Color? viewBackgroundColor;
  final Color? dividerColor;
  final Widget? barLeading;

  const CustomSearchBar({
    super.key,
    required this.itemBuilder,
    required this.loadingTile,
    required this.fetch,
    this.barElevation,
    this.barShape,
    this.barBackgroundColor,
    this.barPadding,
    this.viewShape,
    this.isFullScreen = false,
    this.viewConstraints,
    this.viewBackgroundColor,
    this.dividerColor,
    this.barLeading,
  });

  @override
  Widget build(BuildContext context) {
    return SearchAnchor.bar(
      barElevation: barElevation,
      barShape: barShape,
      barBackgroundColor: barBackgroundColor,
      barPadding: barPadding,
      viewShape: viewShape,
      isFullScreen: isFullScreen,
      viewConstraints: viewConstraints,
      viewBackgroundColor: viewBackgroundColor,
      dividerColor: dividerColor,
      barLeading: barLeading ?? const SizedBox(),
      barTrailing: const [
        Icon(Icons.search),
      ],
      suggestionsBuilder: (context, controller) {
        // Builder for search suggestions.
        return [
          Consumer(
            builder: (context, ref, child) {
              final search = ref.watch(
                searchControllerProvider<T>(
                  fetch: fetch,
                  query: controller
                      .text, // Use the current text in the search bar as the query.
                ),
              );
              return switch (search) {
                ControllerStateInitial<List<T>>() =>
                  const SizedBox(), // Initial state: display nothing.
                ControllerStateLoading<List<T>>() => Column(
                    // Loading state: display loading tiles.
                    children: [
                      for (var i = 0; i < 5; i++) loadingTile,
                    ],
                  ),
                ControllerStateData<List<T>>(data: final result)
                    when result.isEmpty =>
                  Center(
                    child: SizedBox(
                      height: context.height * 0.5,
                      child: const ListEmptyResult(),
                    ),
                  ), // Success state with no results: display "no results" message.
                ControllerStateData<List<T>>(data: final results) => Column(
                    // Success state with results: display result items.
                    children: [
                      for (final result in results)
                        itemBuilder(
                          result,
                          () {
                            controller.closeView(controller
                                .text); // Close the search view when an item is pressed.
                          },
                        ),
                    ],
                  ),
                ControllerStateError<List<T>>(error: final failure) => Center(
                    child: SizedBox(
                      height: context.height * 0.5,
                      child: ListErrorResult(
                        // Error state: display error message and retry button.
                        failure: failure,
                        onRetry: ref
                            .read(searchControllerProvider<T>(
                              fetch: fetch,
                              query: controller.text,
                            ).notifier)
                            .search, // Retry the search operation.
                      ),
                    ),
                  ),
              };
            },
          )
        ];
      },
    );
  }
}
