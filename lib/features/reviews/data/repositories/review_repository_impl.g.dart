// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef ReviewRepositoryRef = Ref<ReviewRepository>;

@ProviderFor(reviewRepository)
const reviewRepositoryProvider = ReviewRepositoryProvider._();

final class ReviewRepositoryProvider extends $FunctionalProvider<
    ReviewRepository,
    ReviewRepository,
    ReviewRepositoryRef> with $Provider<ReviewRepository, ReviewRepositoryRef> {
  const ReviewRepositoryProvider._(
      {ReviewRepository Function(
        ReviewRepositoryRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'reviewRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ReviewRepository Function(
    ReviewRepositoryRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$reviewRepositoryHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ReviewRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ReviewRepository>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<ReviewRepository> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  ReviewRepositoryProvider $copyWithCreate(
    ReviewRepository Function(
      ReviewRepositoryRef ref,
    ) create,
  ) {
    return ReviewRepositoryProvider._(create: create);
  }

  @override
  ReviewRepository create(ReviewRepositoryRef ref) {
    final _$cb = _createCb ?? reviewRepository;
    return _$cb(ref);
  }
}

String _$reviewRepositoryHash() => r'b195605cc4b5eecadbf5482af52a9487a302e9a4';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
