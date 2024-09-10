// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_reviews_fetch_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef UserReviewsFetchRef
    = Ref<Future<Result<List<Review>>> Function(int page, int pageSize)>;

@ProviderFor(userReviewsFetch)
const userReviewsFetchProvider = UserReviewsFetchProvider._();

final class UserReviewsFetchProvider extends $FunctionalProvider<
        Future<Result<List<Review>>> Function(int page, int pageSize),
        Future<Result<List<Review>>> Function(int page, int pageSize),
        UserReviewsFetchRef>
    with
        $Provider<Future<Result<List<Review>>> Function(int page, int pageSize),
            UserReviewsFetchRef> {
  const UserReviewsFetchProvider._(
      {Future<Result<List<Review>>> Function(int page, int pageSize) Function(
        UserReviewsFetchRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'userReviewsFetchProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final Future<Result<List<Review>>> Function(int page, int pageSize) Function(
    UserReviewsFetchRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$userReviewsFetchHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(
      Future<Result<List<Review>>> Function(int page, int pageSize) value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<
          Future<Result<List<Review>>> Function(int page, int pageSize)>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<
          Future<Result<List<Review>>> Function(int page, int pageSize)>
      $createElement(ProviderContainer container) =>
          $ProviderElement(this, container);

  @override
  UserReviewsFetchProvider $copyWithCreate(
    Future<Result<List<Review>>> Function(int page, int pageSize) Function(
      UserReviewsFetchRef ref,
    ) create,
  ) {
    return UserReviewsFetchProvider._(create: create);
  }

  @override
  Future<Result<List<Review>>> Function(int page, int pageSize) create(
      UserReviewsFetchRef ref) {
    final _$cb = _createCb ?? userReviewsFetch;
    return _$cb(ref);
  }
}

String _$userReviewsFetchHash() => r'85d013f7ea24b90114d7bc025eb725fdd31f252d';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
