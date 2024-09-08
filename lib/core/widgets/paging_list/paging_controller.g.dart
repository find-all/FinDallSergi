// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(PagingController)
const pagingControllerProvider = PagingControllerFamily._();

final class PagingControllerProvider<T>
    extends $NotifierProvider<PagingController<T>, PagingState<T>> {
  const PagingControllerProvider._(
      {required PagingControllerFamily super.from,
      required ({
        int initialPage,
        int pageSize,
        Future<Result<List<T>>> Function(int page, int pageSize) fetch,
      })
          super.argument,
      super.runNotifierBuildOverride,
      PagingController<T> Function()? create})
      : _createCb = create,
        super(
          name: r'pagingControllerProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final PagingController<T> Function()? _createCb;

  @override
  String debugGetCreateSourceHash() => _$pagingControllerHash();

  PagingControllerProvider<T> _copyWithCreate(
    PagingController<T> Function<T>() create,
  ) {
    return PagingControllerProvider<T>._(
        argument: argument as ({
          int initialPage,
          int pageSize,
          Future<Result<List<T>>> Function(int page, int pageSize) fetch,
        }),
        from: from! as PagingControllerFamily,
        create: create<T>);
  }

  PagingControllerProvider<T> _copyWithBuild(
    PagingState<T> Function<T>(
      Ref<PagingState<T>>,
      PagingController<T>,
    ) build,
  ) {
    return PagingControllerProvider<T>._(
        argument: argument as ({
          int initialPage,
          int pageSize,
          Future<Result<List<T>>> Function(int page, int pageSize) fetch,
        }),
        from: from! as PagingControllerFamily,
        runNotifierBuildOverride: build<T>);
  }

  @override
  String toString() {
    return r'pagingControllerProvider'
        '<${T}>'
        '$argument';
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PagingState<T> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<PagingState<T>>(value),
    );
  }

  @$internal
  @override
  PagingController<T> create() => _createCb?.call() ?? PagingController<T>();

  @$internal
  @override
  PagingControllerProvider<T> $copyWithCreate(
    PagingController<T> Function() create,
  ) {
    return PagingControllerProvider<T>._(
        argument: argument as ({
          int initialPage,
          int pageSize,
          Future<Result<List<T>>> Function(int page, int pageSize) fetch,
        }),
        from: from! as PagingControllerFamily,
        create: create);
  }

  @$internal
  @override
  PagingControllerProvider<T> $copyWithBuild(
    PagingState<T> Function(
      Ref<PagingState<T>>,
      PagingController<T>,
    ) build,
  ) {
    return PagingControllerProvider<T>._(
        argument: argument as ({
          int initialPage,
          int pageSize,
          Future<Result<List<T>>> Function(int page, int pageSize) fetch,
        }),
        from: from! as PagingControllerFamily,
        runNotifierBuildOverride: build);
  }

  @$internal
  @override
  $NotifierProviderElement<PagingController<T>, PagingState<T>> $createElement(
          ProviderContainer container) =>
      $NotifierProviderElement(this, container);

  @override
  bool operator ==(Object other) {
    return other is PagingControllerProvider &&
        other.runtimeType == runtimeType &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, argument);
  }
}

String _$pagingControllerHash() => r'f27cbdf3ea6cdf48e627d1b96904121762aec117';

final class PagingControllerFamily extends Family {
  const PagingControllerFamily._()
      : super(
          name: r'pagingControllerProvider',
          dependencies: null,
          allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  PagingControllerProvider<T> call<T>({
    int initialPage = 1,
    int pageSize = 5,
    required Future<Result<List<T>>> Function(int page, int pageSize) fetch,
  }) =>
      PagingControllerProvider<T>._(argument: (
        initialPage: initialPage,
        pageSize: pageSize,
        fetch: fetch,
      ), from: this);

  @override
  String debugGetCreateSourceHash() => _$pagingControllerHash();

  @override
  String toString() => r'pagingControllerProvider';

  /// {@macro riverpod.override_with}
  Override overrideWith(
    PagingController<T> Function<T>(
      ({
        int initialPage,
        int pageSize,
        Future<Result<List<T>>> Function(int page, int pageSize) fetch,
      }) args,
    ) create,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as PagingControllerProvider;

        return provider._copyWithCreate(<T>() {
          final argument = provider.argument as ({
            int initialPage,
            int pageSize,
            Future<Result<List<T>>> Function(int page, int pageSize) fetch,
          });

          return create(argument);
        }).$createElement(container);
      },
    );
  }

  /// {@macro riverpod.override_with_build}
  Override overrideWithBuild(
    PagingState<T> Function<T>(
            Ref<PagingState<T>> ref,
            PagingController<T> notifier,
            ({
              int initialPage,
              int pageSize,
              Future<Result<List<T>>> Function(int page, int pageSize) fetch,
            }) argument)
        build,
  ) {
    return $FamilyOverride(
      from: this,
      createElement: (container, provider) {
        provider as PagingControllerProvider;

        return provider._copyWithBuild(<T>(ref, notifier) {
          final argument = provider.argument as ({
            int initialPage,
            int pageSize,
            Future<Result<List<T>>> Function(int page, int pageSize) fetch,
          });

          return build(ref, notifier, argument);
        }).$createElement(container);
      },
    );
  }
}

abstract class _$PagingController<T> extends $Notifier<PagingState<T>> {
  late final _$args = (ref as $NotifierProviderElement).origin.argument as ({
    int initialPage,
    int pageSize,
    Future<Result<List<T>>> Function(int page, int pageSize) fetch,
  });
  int get initialPage => _$args.initialPage;
  int get pageSize => _$args.pageSize;
  Future<Result<List<T>>> Function(int page, int pageSize) get fetch =>
      _$args.fetch;

  PagingState<T> build({
    int initialPage = 1,
    int pageSize = 5,
    required Future<Result<List<T>>> Function(int page, int pageSize) fetch,
  });
  @$internal
  @override
  PagingState<T> runBuild() => build(
        initialPage: _$args.initialPage,
        pageSize: _$args.pageSize,
        fetch: _$args.fetch,
      );
}

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
