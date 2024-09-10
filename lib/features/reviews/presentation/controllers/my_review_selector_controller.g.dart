// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_review_selector_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(MyReviewSelectorController)
const myReviewSelectorControllerProvider =
    MyReviewSelectorControllerProvider._();

final class MyReviewSelectorControllerProvider
    extends $NotifierProvider<MyReviewSelectorController, Review?> {
  const MyReviewSelectorControllerProvider._(
      {super.runNotifierBuildOverride,
      MyReviewSelectorController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'myReviewSelectorControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final MyReviewSelectorController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$myReviewSelectorControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Review? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<Review?>(value),
    );
  }

  @$internal
  @override
  MyReviewSelectorController create() =>
      _createCb?.call() ?? MyReviewSelectorController();

  @$internal
  @override
  MyReviewSelectorControllerProvider $copyWithCreate(
    MyReviewSelectorController Function() create,
  ) {
    return MyReviewSelectorControllerProvider._(create: create);
  }

  @$internal
  @override
  MyReviewSelectorControllerProvider $copyWithBuild(
    Review? Function(
      Ref<Review?>,
      MyReviewSelectorController,
    ) build,
  ) {
    return MyReviewSelectorControllerProvider._(
        runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<MyReviewSelectorController, Review?> $createElement(
          ProviderContainer container) =>
      $NotifierProviderElement(this, container);
}

String _$myReviewSelectorControllerHash() =>
    r'000b2defd4a018d85dd4270da4f68d546f71257b';

abstract class _$MyReviewSelectorController extends $Notifier<Review?> {
  Review? build();
  @$internal
  @override
  Review? runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
