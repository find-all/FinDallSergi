// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_review_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

/// Delete review controller
///
/// Handles deleting reviews for products, businesses, and services
///
/// Uses [ReviewRepositoryImpl] to delete reviews
///
@ProviderFor(DeleteReviewController)
const deleteReviewControllerProvider = DeleteReviewControllerProvider._();

/// Delete review controller
///
/// Handles deleting reviews for products, businesses, and services
///
/// Uses [ReviewRepositoryImpl] to delete reviews
///
final class DeleteReviewControllerProvider
    extends $NotifierProvider<DeleteReviewController, ControllerState<Review>> {
  /// Delete review controller
  ///
  /// Handles deleting reviews for products, businesses, and services
  ///
  /// Uses [ReviewRepositoryImpl] to delete reviews
  ///
  const DeleteReviewControllerProvider._(
      {super.runNotifierBuildOverride,
      DeleteReviewController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'deleteReviewControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final DeleteReviewController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$deleteReviewControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<Review> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<Review>>(value),
    );
  }

  @$internal
  @override
  DeleteReviewController create() =>
      _createCb?.call() ?? DeleteReviewController();

  @$internal
  @override
  DeleteReviewControllerProvider $copyWithCreate(
    DeleteReviewController Function() create,
  ) {
    return DeleteReviewControllerProvider._(create: create);
  }

  @$internal
  @override
  DeleteReviewControllerProvider $copyWithBuild(
    ControllerState<Review> Function(
      Ref<ControllerState<Review>>,
      DeleteReviewController,
    ) build,
  ) {
    return DeleteReviewControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<DeleteReviewController, ControllerState<Review>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$deleteReviewControllerHash() =>
    r'164e08479627a709352e2fecf3e815bd68d8f561';

abstract class _$DeleteReviewController
    extends $Notifier<ControllerState<Review>> {
  ControllerState<Review> build();
  @$internal
  @override
  ControllerState<Review> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
