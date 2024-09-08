// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_name_form_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(ChangeNameFormController)
const changeNameFormControllerProvider = ChangeNameFormControllerFamily._();

final class ChangeNameFormControllerProvider
    extends $NotifierProvider<ChangeNameFormController, ChangeNameFormState> {
  const ChangeNameFormControllerProvider._(
      {required ChangeNameFormControllerFamily super.from,
      required String super.argument,
      super.runNotifierBuildOverride,
      ChangeNameFormController Function()? create})
      : _createCb = create,
        super(
          name: r'changeNameFormControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final ChangeNameFormController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$changeNameFormControllerHash();

  @override
  String toString() {
    return r'changeNameFormControllerProvider'
        ''
        '($argument)';
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ChangeNameFormState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ChangeNameFormState>(value),
    );
  }

  @$internal
  @override
  ChangeNameFormController create() =>
      _createCb?.call() ?? ChangeNameFormController();

  @$internal
  @override
  ChangeNameFormControllerProvider $copyWithCreate(
    ChangeNameFormController Function() create,
  ) {
    return ChangeNameFormControllerProvider._(
        argument: argument as String,
        from: from! as ChangeNameFormControllerFamily,
        create: create);
  }

  @$internal
  @override
  ChangeNameFormControllerProvider $copyWithBuild(
    ChangeNameFormState Function(
      Ref<ChangeNameFormState>,
      ChangeNameFormController,
    ) build,
  ) {
    return ChangeNameFormControllerProvider._(
        argument: argument as String,
        from: from! as ChangeNameFormControllerFamily,
        runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<ChangeNameFormController, ChangeNameFormState>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);

  @override
  bool operator ==(Object other) {
    return other is ChangeNameFormControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$changeNameFormControllerHash() =>
    r'197e9524d024bad357dd65508821202fdb36bafd';

final class ChangeNameFormControllerFamily extends Family {
  const ChangeNameFormControllerFamily._()
      : super(
          name: r'changeNameFormControllerProvider',
          dependencies: null,
          allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  ChangeNameFormControllerProvider call({
    required String currentName,
  }) =>
      ChangeNameFormControllerProvider._(argument: currentName, from: this);

  @override
  String debugGetCreateSourceHash() => _$changeNameFormControllerHash();

  @override
  String toString() => r'changeNameFormControllerProvider';

  /// {@macro riverpod.override_with}
  Override overrideWith(
    ChangeNameFormController Function(
      String args,
    ) create,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as ChangeNameFormControllerProvider;

        final argument = provider.argument as String;

        return provider
            .$copyWithCreate(() => create(argument))
            .$createElement(container);
      },
    );
  }

  /// {@macro riverpod.override_with_build}
  Override overrideWithBuild(
    ChangeNameFormState Function(Ref<ChangeNameFormState> ref,
            ChangeNameFormController notifier, String argument)
        build,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as ChangeNameFormControllerProvider;

        final argument = provider.argument as String;

        return provider
            .$copyWithBuild((ref, notifier) => build(ref, notifier, argument))
            .$createElement(container);
      },
    );
  }
}

abstract class _$ChangeNameFormController
    extends $Notifier<ChangeNameFormState> {
  late final _$args =
      (ref as $NotifierProviderElement).origin.argument as String;
  String get currentName => _$args;

  ChangeNameFormState build({
    required String currentName,
  });
  @$internal
  @override
  ChangeNameFormState runBuild() => build(
        currentName: _$args,
      );
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
