// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_review_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

/// Add review controller
///
/// Handles adding reviews for products, businesses, and services
///
/// Uses [ReviewRepositoryImpl] to add reviews
///
/// Can add reviews for products, businesses, and services using the respective methods
///
@ProviderFor(AddReviewController)
const addReviewControllerProvider = AddReviewControllerProvider._();

/// Add review controller
///
/// Handles adding reviews for products, businesses, and services
///
/// Uses [ReviewRepositoryImpl] to add reviews
///
/// Can add reviews for products, businesses, and services using the respective methods
///
final class AddReviewControllerProvider
    extends $NotifierProvider<AddReviewController, ControllerState<Review>> {
  /// Add review controller
  ///
  /// Handles adding reviews for products, businesses, and services
  ///
  /// Uses [ReviewRepositoryImpl] to add reviews
  ///
  /// Can add reviews for products, businesses, and services using the respective methods
  ///
  const AddReviewControllerProvider._(
      {super.runNotifierBuildOverride, AddReviewController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'addReviewControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final AddReviewController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$addReviewControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<Review> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<Review>>(value),
    );
  }

  @$internal
  @override
  AddReviewController create() => _createCb?.call() ?? AddReviewController();

  @$internal
  @override
  AddReviewControllerProvider $copyWithCreate(
    AddReviewController Function() create,
  ) {
    return AddReviewControllerProvider._(create: create);
  }

  @$internal
  @override
  AddReviewControllerProvider $copyWithBuild(
    ControllerState<Review> Function(
      Ref<ControllerState<Review>>,
      AddReviewController,
    ) build,
  ) {
    return AddReviewControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<AddReviewController, ControllerState<Review>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$addReviewControllerHash() =>
    r'b730035b1b77e615f48a212aa1cc4b6cc2f3404c';

abstract class _$AddReviewController
    extends $Notifier<ControllerState<Review>> {
  ControllerState<Review> build();
  @$internal
  @override
  ControllerState<Review> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
