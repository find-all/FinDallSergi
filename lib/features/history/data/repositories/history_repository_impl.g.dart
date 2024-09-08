// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef HistoryRepositoryRef = Ref<HistoryRepository>;

@ProviderFor(historyRepository)
const historyRepositoryProvider = HistoryRepositoryProvider._();

final class HistoryRepositoryProvider extends $FunctionalProvider<
        HistoryRepository, HistoryRepository, HistoryRepositoryRef>
    with $Provider<HistoryRepository, HistoryRepositoryRef> {
  const HistoryRepositoryProvider._(
      {HistoryRepository Function(
        HistoryRepositoryRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'historyRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final HistoryRepository Function(
    HistoryRepositoryRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$historyRepositoryHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HistoryRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<HistoryRepository>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<HistoryRepository> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  HistoryRepositoryProvider $copyWithCreate(
    HistoryRepository Function(
      HistoryRepositoryRef ref,
    ) create,
  ) {
    return HistoryRepositoryProvider._(create: create);
  }

  @override
  HistoryRepository create(HistoryRepositoryRef ref) {
    final _$cb = _createCb ?? historyRepository;
    return _$cb(ref);
  }
}

String _$historyRepositoryHash() => r'087e8f675b9e991b5e89bd2807522db08962f684';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
