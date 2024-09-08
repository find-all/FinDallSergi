// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_account_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(VerifyAccountFormController)
const verifyAccountFormControllerProvider =
    VerifyAccountFormControllerFamily._();

final class VerifyAccountFormControllerProvider extends $NotifierProvider<
    VerifyAccountFormController, VerifyAccountFormState> {
  const VerifyAccountFormControllerProvider._(
      {required VerifyAccountFormControllerFamily super.from,
      required String super.argument,
      super.runNotifierBuildOverride,
      VerifyAccountFormController Function()? create})
      : _createCb = create,
        super(
          name: r'verifyAccountFormControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final VerifyAccountFormController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$verifyAccountFormControllerHash();

  @override
  String toString() {
    return r'verifyAccountFormControllerProvider'
        ''
        '($argument)';
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(VerifyAccountFormState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<VerifyAccountFormState>(value),
    );
  }

  @$internal
  @override
  VerifyAccountFormController create() =>
      _createCb?.call() ?? VerifyAccountFormController();

  @$internal
  @override
  VerifyAccountFormControllerProvider $copyWithCreate(
    VerifyAccountFormController Function() create,
  ) {
    return VerifyAccountFormControllerProvider._(
        argument: argument as String,
        from: from! as VerifyAccountFormControllerFamily,
        create: create);
  }

  @$internal
  @override
  VerifyAccountFormControllerProvider $copyWithBuild(
    VerifyAccountFormState Function(
      Ref<VerifyAccountFormState>,
      VerifyAccountFormController,
    ) build,
  ) {
    return VerifyAccountFormControllerProvider._(
        argument: argument as String,
        from: from! as VerifyAccountFormControllerFamily,
        runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<VerifyAccountFormController, VerifyAccountFormState>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);

  @override
  bool operator ==(Object other) {
    return other is VerifyAccountFormControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$verifyAccountFormControllerHash() =>
    r'483665c557c48974b4d06ff99f1c15b2ebefde72';

final class VerifyAccountFormControllerFamily extends Family {
  const VerifyAccountFormControllerFamily._()
      : super(
          name: r'verifyAccountFormControllerProvider',
          dependencies: null,
          allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  VerifyAccountFormControllerProvider call({
    required String token,
  }) =>
      VerifyAccountFormControllerProvider._(argument: token, from: this);

  @override
  String debugGetCreateSourceHash() => _$verifyAccountFormControllerHash();

  @override
  String toString() => r'verifyAccountFormControllerProvider';

  /// {@macro riverpod.override_with}
  Override overrideWith(
    VerifyAccountFormController Function(
      String args,
    ) create,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as VerifyAccountFormControllerProvider;

        final argument = provider.argument as String;

        return provider
            .$copyWithCreate(() => create(argument))
            .$createElement(container);
      },
    );
  }

  /// {@macro riverpod.override_with_build}
  Override overrideWithBuild(
    VerifyAccountFormState Function(Ref<VerifyAccountFormState> ref,
            VerifyAccountFormController notifier, String argument)
        build,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as VerifyAccountFormControllerProvider;

        final argument = provider.argument as String;

        return provider
            .$copyWithBuild((ref, notifier) => build(ref, notifier, argument))
            .$createElement(container);
      },
    );
  }
}

abstract class _$VerifyAccountFormController
    extends $Notifier<VerifyAccountFormState> {
  late final _$args =
      (ref as $NotifierProviderElement).origin.argument as String;
  String get token => _$args;

  VerifyAccountFormState build({
    required String token,
  });
  @$internal
  @override
  VerifyAccountFormState runBuild() => build(
        token: _$args,
      );
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
