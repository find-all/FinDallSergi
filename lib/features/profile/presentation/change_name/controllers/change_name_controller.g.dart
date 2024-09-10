// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_name_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ChangeNameController)
const changeNameControllerProvider = ChangeNameControllerProvider._();

final class ChangeNameControllerProvider
    extends $NotifierProvider<ChangeNameController, ControllerState<Profile>> {
  const ChangeNameControllerProvider._(
      {super.runNotifierBuildOverride, ChangeNameController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'changeNameControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ChangeNameController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$changeNameControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<Profile> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<Profile>>(value),
    );
  }

  @$internal
  @override
  ChangeNameController create() => _createCb?.call() ?? ChangeNameController();

  @$internal
  @override
  ChangeNameControllerProvider $copyWithCreate(
    ChangeNameController Function() create,
  ) {
    return ChangeNameControllerProvider._(create: create);
  }

  @$internal
  @override
  ChangeNameControllerProvider $copyWithBuild(
    ControllerState<Profile> Function(
      Ref<ControllerState<Profile>>,
      ChangeNameController,
    ) build,
  ) {
    return ChangeNameControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<ChangeNameController, ControllerState<Profile>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);
}

String _$changeNameControllerHash() =>
    r'0c38dabea4a1cea1c20a37b2a9fa4d2f86744b6a';

abstract class _$ChangeNameController
    extends $Notifier<ControllerState<Profile>> {
  ControllerState<Profile> build();
  @$internal
  @override
  ControllerState<Profile> runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
