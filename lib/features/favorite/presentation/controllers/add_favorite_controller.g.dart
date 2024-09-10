// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_favorite_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(AddFavoriteController)
const addFavoriteControllerProvider = AddFavoriteControllerFamily._();

final class AddFavoriteControllerProvider extends $NotifierProvider<
    AddFavoriteController, ControllerState<Favorite>> {
  const AddFavoriteControllerProvider._(
      {required AddFavoriteControllerFamily super.from,
      required String super.argument,
      super.runNotifierBuildOverride,
      AddFavoriteController Function()? create})
      : _createCb = create,
        super(
          name: r'addFavoriteControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final AddFavoriteController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$addFavoriteControllerHash();

  @override
  String toString() {
    return r'addFavoriteControllerProvider'
        ''
        '($argument)';
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ControllerState<Favorite> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<ControllerState<Favorite>>(value),
    );
  }

  @$internal
  @override
  AddFavoriteController create() =>
      _createCb?.call() ?? AddFavoriteController();

  @$internal
  @override
  AddFavoriteControllerProvider $copyWithCreate(
    AddFavoriteController Function() create,
  ) {
    return AddFavoriteControllerProvider._(
        argument: argument as String,
        from: from! as AddFavoriteControllerFamily,
        create: create);
  }

  @$internal
  @override
  AddFavoriteControllerProvider $copyWithBuild(
    ControllerState<Favorite> Function(
      Ref<ControllerState<Favorite>>,
      AddFavoriteController,
    ) build,
  ) {
    return AddFavoriteControllerProvider._(
        argument: argument as String,
        from: from! as AddFavoriteControllerFamily,
        runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<AddFavoriteController, ControllerState<Favorite>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);

  @override
  bool operator ==(Object other) {
    return other is AddFavoriteControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$addFavoriteControllerHash() =>
    r'bfd8b195e9541cb1d0c0d1ecc1ac31e02477f03f';

final class AddFavoriteControllerFamily extends Family {
  const AddFavoriteControllerFamily._()
      : super(
          name: r'addFavoriteControllerProvider',
          dependencies: null,
          allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  AddFavoriteControllerProvider call({
    required String id,
  }) =>
      AddFavoriteControllerProvider._(argument: id, from: this);

  @override
  String debugGetCreateSourceHash() => _$addFavoriteControllerHash();

  @override
  String toString() => r'addFavoriteControllerProvider';

  /// {@macro riverpod.override_with}
  Override overrideWith(
    AddFavoriteController Function(
      String args,
    ) create,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as AddFavoriteControllerProvider;

        final argument = provider.argument as String;

        return provider
            .$copyWithCreate(() => create(argument))
            .$createElement(container);
      },
    );
  }

  /// {@macro riverpod.override_with_build}
  Override overrideWithBuild(
    ControllerState<Favorite> Function(Ref<ControllerState<Favorite>> ref,
            AddFavoriteController notifier, String argument)
        build,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as AddFavoriteControllerProvider;

        final argument = provider.argument as String;

        return provider
            .$copyWithBuild((ref, notifier) => build(ref, notifier, argument))
            .$createElement(container);
      },
    );
  }
}

abstract class _$AddFavoriteController
    extends $Notifier<ControllerState<Favorite>> {
  late final _$args =
      (ref as $NotifierProviderElement).origin.argument as String;
  String get id => _$args;

  ControllerState<Favorite> build({
    required String id,
  });
  @$internal
  @override
  ControllerState<Favorite> runBuild() => build(
        id: _$args,
      );
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
