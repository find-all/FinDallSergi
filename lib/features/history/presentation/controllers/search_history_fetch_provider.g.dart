// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history_fetch_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef SearchHistoryFetchRef = Ref<
    Future<Result<List<SearchHistoryEntry>>> Function(int page, int pageSize)>;

@ProviderFor(searchHistoryFetch)
const searchHistoryFetchProvider = SearchHistoryFetchProvider._();

final class SearchHistoryFetchProvider
    extends $FunctionalProvider<
        Future<Result<List<SearchHistoryEntry>>> Function(
            int page, int pageSize),
        Future<Result<List<SearchHistoryEntry>>> Function(
            int page, int pageSize),
        SearchHistoryFetchRef>
    with
        $Provider<
            Future<Result<List<SearchHistoryEntry>>> Function(
                int page, int pageSize),
            SearchHistoryFetchRef> {
  const SearchHistoryFetchProvider._(
      {Future<Result<List<SearchHistoryEntry>>> Function(int page, int pageSize)
          Function(
        SearchHistoryFetchRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'searchHistoryFetchProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final Future<Result<List<SearchHistoryEntry>>> Function(
          int page, int pageSize)
      Function(
    SearchHistoryFetchRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$searchHistoryFetchHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
      Future<Result<List<SearchHistoryEntry>>> Function(int page, int pageSize)
          value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<
          Future<Result<List<SearchHistoryEntry>>> Function(
              int page, int pageSize)>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<
          Future<Result<List<SearchHistoryEntry>>> Function(
              int page, int pageSize)>
      $createElement(ProviderContainer container) =>
          $ProviderElement(this, container);

  @override
  SearchHistoryFetchProvider $copyWithCreate(
    Future<Result<List<SearchHistoryEntry>>> Function(int page, int pageSize)
        Function(
      SearchHistoryFetchRef ref,
    ) create,
  ) {
    return SearchHistoryFetchProvider._(create: create);
  }

  @override
  Future<Result<List<SearchHistoryEntry>>> Function(int page, int pageSize)
      create(SearchHistoryFetchRef ref) {
    final _$cb = _createCb ?? searchHistoryFetch;
    return _$cb(ref);
  }
}

String _$searchHistoryFetchHash() =>
    r'4d81c3c1db502b422ff9532ddc50394a1b2ffc12';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
