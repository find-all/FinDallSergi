// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_review_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

/// Update review controller
///
/// Handles updating reviews for products, businesses, and services
///
/// Uses [ReviewRepositoryImpl] to add reviews
///
/// Can add reviews for products, businesses, and services using the respective methods
///
@ProviderFor(UpdateReviewController)
const updateReviewControllerProvider = UpdateReviewControllerProvider._();

/// Update review controller
///
/// Handles updating reviews for products, businesses, and services
///
/// Uses [ReviewRepositoryImpl] to add reviews
///
/// Can add reviews for products, businesses, and services using the respective methods
///
final class UpdateReviewControllerProvider
    extends $NotifierProvider<UpdateReviewController, ControllerState<Review>> {
  /// Update review controller
  ///
  /// Handles updating reviews for products, businesses, and services
  ///
  /// Uses [ReviewRepositoryImpl] to add reviews
  ///
  /// Can add reviews for products, businesses, and services using the respective methods
  ///
  const UpdateReviewControllerProvider._(
      {super.runNotifierBuildOverride,
      UpdateReviewController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'updateReviewControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final UpdateReviewController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$updateReviewControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<Review> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<Review>>(value),
    );
  }

  @$internal
  @override
  UpdateReviewController create() =>
      _createCb?.call() ?? UpdateReviewController();

  @$internal
  @override
  UpdateReviewControllerProvider $copyWithCreate(
    UpdateReviewController Function() create,
  ) {
    return UpdateReviewControllerProvider._(create: create);
  }

  @$internal
  @override
  UpdateReviewControllerProvider $copyWithBuild(
    ControllerState<Review> Function(
      Ref<ControllerState<Review>>,
      UpdateReviewController,
    ) build,
  ) {
    return UpdateReviewControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<UpdateReviewController, ControllerState<Review>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$updateReviewControllerHash() =>
    r'0a838e038101096f43c2c58cb4e5c59d092b5343';

abstract class _$UpdateReviewController
    extends $Notifier<ControllerState<Review>> {
  ControllerState<Review> build();
  @$internal
  @override
  ControllerState<Review> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
