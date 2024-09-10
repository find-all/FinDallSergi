// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AuthController)
const authControllerProvider = AuthControllerProvider._();

final class AuthControllerProvider
    extends $NotifierProvider<AuthController, AuthControllerState> {
  const AuthControllerProvider._(
      {super.runNotifierBuildOverride, AuthController Function()? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'authControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final AuthController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$authControllerHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthControllerState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<AuthControllerState>(value),
    );
  }

  @$internal
  @override
  AuthController create() => _createCb?.call() ?? AuthController();

  @$internal
  @override
  AuthControllerProvider $copyWithCreate(
    AuthController Function() create,
  ) {
    return AuthControllerProvider._(create: create);
  }

  @$internal
  @override
  AuthControllerProvider $copyWithBuild(
    AuthControllerState Function(
      Ref<AuthControllerState>,
      AuthController,
    ) build,
  ) {
    return AuthControllerProvider._(runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<AuthController, AuthControllerState> $createElement(
          ProviderContainer container) =>
      $NotifierProviderElement(this, container);
}

String _$authControllerHash() => r'b8fd4595ede86c0423b5a719515865dcbd808670';

abstract class _$AuthController extends $Notifier<AuthControllerState> {
  AuthControllerState build();
  @$internal
  @override
  AuthControllerState runBuild() => build();
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
