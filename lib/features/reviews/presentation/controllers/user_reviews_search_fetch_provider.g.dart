// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_reviews_search_fetch_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef UserReviewsSearchFetchRef
    = Ref<Future<Result<List<Review>>> Function({required String query})>;

@ProviderFor(userReviewsSearchFetch)
const userReviewsSearchFetchProvider = UserReviewsSearchFetchProvider._();

final class UserReviewsSearchFetchProvider extends $FunctionalProvider<
        Future<Result<List<Review>>> Function({required String query}),
        Future<Result<List<Review>>> Function({required String query}),
        UserReviewsSearchFetchRef>
    with
        $Provider<
            Future<Result<List<Review>>> Function({required String query}),
            UserReviewsSearchFetchRef> {
  const UserReviewsSearchFetchProvider._(
      {Future<Result<List<Review>>> Function({required String query}) Function(
        UserReviewsSearchFetchRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'userReviewsSearchFetchProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final Future<Result<List<Review>>> Function({required String query}) Function(
    UserReviewsSearchFetchRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$userReviewsSearchFetchHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
      Future<Result<List<Review>>> Function({required String query}) value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<
          Future<Result<List<Review>>> Function(
              {required String query})>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<
          Future<Result<List<Review>>> Function({required String query})>
      $createElement(ProviderContainer container) =>
          $ProviderElement(this, container);

  @override
  UserReviewsSearchFetchProvider $copyWithCreate(
    Future<Result<List<Review>>> Function({required String query}) Function(
      UserReviewsSearchFetchRef ref,
    ) create,
  ) {
    return UserReviewsSearchFetchProvider._(create: create);
  }

  @override
  Future<Result<List<Review>>> Function({required String query}) create(
      UserReviewsSearchFetchRef ref) {
    final _$cb = _createCb ?? userReviewsSearchFetch;
    return _$cb(ref);
  }
}

String _$userReviewsSearchFetchHash() =>
    r'2effa322a549924193154f12b9df8cd4b394d3b9';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
