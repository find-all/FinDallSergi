// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_search_bar.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

/// A controller to manage search operations.
///
/// This controller handles search operations by debouncing the search input to limit the frequency of search operations.
///
/// It provides methods to perform search operations and manage the state of the search results.
///
/// The controller uses Riverpod for state management.
///
@ProviderFor(SearchController)
const searchControllerProvider = SearchControllerFamily._();

/// A controller to manage search operations.
///
/// This controller handles search operations by debouncing the search input to limit the frequency of search operations.
///
/// It provides methods to perform search operations and manage the state of the search results.
///
/// The controller uses Riverpod for state management.
///
final class SearchControllerProvider<T>
    extends $NotifierProvider<SearchController<T>, ControllerState<List<T>>> {
  /// A controller to manage search operations.
  ///
  /// This controller handles search operations by debouncing the search input to limit the frequency of search operations.
  ///
  /// It provides methods to perform search operations and manage the state of the search results.
  ///
  /// The controller uses Riverpod for state management.
  ///
  const SearchControllerProvider._(
      {required SearchControllerFamily super.from,
      required ({
        String? query,
        Future<Result<List<T>>> Function({required String query}) fetch,
      })
          super.argument,
      super.runNotifierBuildOverride,
      SearchController<T> Function()? create})
      : _createCb = create,
        super(
          name: r'searchControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final SearchController<T> Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$searchControllerHash();

  SearchControllerProvider<T> _copyWithCreate(
    SearchController<T> Function<T>() create,
  ) {
    return SearchControllerProvider<T>._(
        argument: argument as ({
          String? query,
          Future<Result<List<T>>> Function({required String query}) fetch,
        }),
        from: from! as SearchControllerFamily,
        create: create<T>);
  }

  SearchControllerProvider<T> _copyWithBuild(
    ControllerState<List<T>> Function<T>(
      Ref<ControllerState<List<T>>>,
      SearchController<T>,
    ) build,
  ) {
    return SearchControllerProvider<T>._(
        argument: argument as ({
          String? query,
          Future<Result<List<T>>> Function({required String query}) fetch,
        }),
        from: from! as SearchControllerFamily,
        runNotifierBuildOverride: build<T>);
  }

  @override
  String toString() {
    return r'searchControllerProvider'
        '<${T}>'
        '$argument';
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<List<T>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<List<T>>>(value),
    );
  }

  @$internal
  @override
  SearchController<T> create() => _createCb?.call() ?? SearchController<T>();

  @$internal
  @override
  SearchControllerProvider<T> $copyWithCreate(
    SearchController<T> Function() create,
  ) {
    return SearchControllerProvider<T>._(
        argument: argument as ({
          String? query,
          Future<Result<List<T>>> Function({required String query}) fetch,
        }),
        from: from! as SearchControllerFamily,
        create: create);
  }

  @$internal
  @override
  SearchControllerProvider<T> $copyWithBuild(
    ControllerState<List<T>> Function(
      Ref<ControllerState<List<T>>>,
      SearchController<T>,
    ) build,
  ) {
    return SearchControllerProvider<T>._(
        argument: argument as ({
          String? query,
          Future<Result<List<T>>> Function({required String query}) fetch,
        }),
        from: from! as SearchControllerFamily,
        runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<SearchController<T>, ControllerState<List<T>>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);

  @override
  bool operator ==(Object other) {
    return other is SearchControllerProvider &&
        other.runtimeType == runtimeType &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, argument);
  }
}

String _$searchControllerHash() => r'39a9f458a0cf7ac626cb7ea382fa1e9c4a5a1b53';

/// A controller to manage search operations.
///
/// This controller handles search operations by debouncing the search input to limit the frequency of search operations.
///
/// It provides methods to perform search operations and manage the state of the search results.
///
/// The controller uses Riverpod for state management.
///
final class SearchControllerFamily extends Family {
  const SearchControllerFamily._()
      : super(
          name: r'searchControllerProvider',
          dependencies: null,
          allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// A controller to manage search operations.
  ///
  /// This controller handles search operations by debouncing the search input to limit the frequency of search operations.
  ///
  /// It provides methods to perform search operations and manage the state of the search results.
  ///
  /// The controller uses Riverpod for state management.
  ///
  SearchControllerProvider<T> call<T>({
    String? query,
    required Future<Result<List<T>>> Function({required String query}) fetch,
  }) =>
      SearchControllerProvider<T>._(argument: (
        query: query,
        fetch: fetch,
      ), from: this);

  @override
  String debugGetCreateSourceHash() => _$searchControllerHash();

  @override
  String toString() => r'searchControllerProvider';

  /// {@macro riverpod.override_with}
  Override overrideWith(
    SearchController<T> Function<T>(
      ({
        String? query,
        Future<Result<List<T>>> Function({required String query}) fetch,
      }) args,
    ) create,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as SearchControllerProvider;

        return provider._copyWithCreate(<T>() {
          final argument = provider.argument as ({
            String? query,
            Future<Result<List<T>>> Function({required String query}) fetch,
          });

          return create(argument);
        }).$createElement(container);
      },
    );
  }

  /// {@macro riverpod.override_with_build}
  Override overrideWithBuild(
    ControllerState<List<T>> Function<T>(
            Ref<ControllerState<List<T>>> ref,
            SearchController<T> notifier,
            ({
              String? query,
              Future<Result<List<T>>> Function({required String query}) fetch,
            }) argument)
        build,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as SearchControllerProvider;

        return provider._copyWithBuild(<T>(ref, notifier) {
          final argument = provider.argument as ({
            String? query,
            Future<Result<List<T>>> Function({required String query}) fetch,
          });

          return build(ref, notifier, argument);
        }).$createElement(container);
      },
    );
  }
}

abstract class _$SearchController<T>
    extends $Notifier<ControllerState<List<T>>> {
  late final _$args = (ref as $NotifierProviderElement).origin.argument as ({
    String? query,
    Future<Result<List<T>>> Function({required String query}) fetch,
  });
  String? get query => _$args.query; // The search query.
  Future<Result<List<T>>> Function({required String query}) get fetch =>
      _$args.fetch;

  ControllerState<List<T>> build({
    String? query,
    required Future<Result<List<T>>> Function({required String query}) fetch,
  });
  @$internal
  @override
  ControllerState<List<T>> runBuild() => build(
        query: _$args.query,
        fetch: _$args.fetch,
      );
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
