// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_favorite_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(DeleteFavoriteController)
const deleteFavoriteControllerProvider = DeleteFavoriteControllerFamily._();

final class DeleteFavoriteControllerProvider extends $NotifierProvider<
    DeleteFavoriteController, ControllerState<Favorite>> {
  const DeleteFavoriteControllerProvider._(
      {required DeleteFavoriteControllerFamily super.from,
      required String super.argument,
      super.runNotifierBuildOverride,
      DeleteFavoriteController Function()? create})
      : _createCb = create,
        super(
          name: r'deleteFavoriteControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final DeleteFavoriteController Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$deleteFavoriteControllerHash();

  @override
  String toString() {
    return r'deleteFavoriteControllerProvider'
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
  DeleteFavoriteController create() =>
      _createCb?.call() ?? DeleteFavoriteController();

  @$internal
  @override
  DeleteFavoriteControllerProvider $copyWithCreate(
    DeleteFavoriteController Function() create,
  ) {
    return DeleteFavoriteControllerProvider._(
        argument: argument as String,
        from: from! as DeleteFavoriteControllerFamily,
        create: create);
  }

  @$internal
  @override
  DeleteFavoriteControllerProvider $copyWithBuild(
    ControllerState<Favorite> Function(
      Ref<ControllerState<Favorite>>,
      DeleteFavoriteController,
    ) build,
  ) {
    return DeleteFavoriteControllerProvider._(
        argument: argument as String,
        from: from! as DeleteFavoriteControllerFamily,
        runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<DeleteFavoriteController, ControllerState<Favorite>>
      $createElement(ProviderContainer container) =>
          $NotifierProviderElement(this, container);

  @override
  bool operator ==(Object other) {
    return other is DeleteFavoriteControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$deleteFavoriteControllerHash() =>
    r'6a4129e6be326fd7a6616e5cc74e8c77967f5e39';

final class DeleteFavoriteControllerFamily extends Family {
  const DeleteFavoriteControllerFamily._()
      : super(
          name: r'deleteFavoriteControllerProvider',
          dependencies: null,
          allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  DeleteFavoriteControllerProvider call({
    required String id,
  }) =>
      DeleteFavoriteControllerProvider._(argument: id, from: this);

  @override
  String debugGetCreateSourceHash() => _$deleteFavoriteControllerHash();

  @override
  String toString() => r'deleteFavoriteControllerProvider';

  /// {@macro riverpod.override_with}
  Override overrideWith(
    DeleteFavoriteController Function(
      String args,
    ) create,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as DeleteFavoriteControllerProvider;

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
            DeleteFavoriteController notifier, String argument)
        build,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as DeleteFavoriteControllerProvider;

        final argument = provider.argument as String;

        return provider
            .$copyWithBuild((ref, notifier) => build(ref, notifier, argument))
            .$createElement(container);
      },
    );
  }
}

abstract class _$DeleteFavoriteController
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
