// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_remote_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

typedef HistoryRemoteDatasourceRef = Ref<HistoryRemoteDatasource>;

@ProviderFor(historyRemoteDatasource)
const historyRemoteDatasourceProvider = HistoryRemoteDatasourceProvider._();

final class HistoryRemoteDatasourceProvider extends $FunctionalProvider<
        HistoryRemoteDatasource,
        HistoryRemoteDatasource,
        HistoryRemoteDatasourceRef>
    with $Provider<HistoryRemoteDatasource, HistoryRemoteDatasourceRef> {
  const HistoryRemoteDatasourceProvider._(
      {HistoryRemoteDatasource Function(
        HistoryRemoteDatasourceRef ref,
      )? create})
      : _createCb = create,
        super(
          from: null,
          argument: null,
          name: r'historyRemoteDatasourceProvider',
          isAutoDispose: true,
          dependencies: null,
          allTransitiveDependencies: null,
        );

  final HistoryRemoteDatasource Function(
    HistoryRemoteDatasourceRef ref,
  )? _createCb;

  @override
  String debugGetCreateSourceHash() => _$historyRemoteDatasourceHash();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HistoryRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $ValueProvider<HistoryRemoteDatasource>(value),
    );
  }

  @$internal
  @override
  $ProviderElement<HistoryRemoteDatasource> $createElement(
          ProviderContainer container) =>
      $ProviderElement(this, container);

  @override
  HistoryRemoteDatasourceProvider $copyWithCreate(
    HistoryRemoteDatasource Function(
      HistoryRemoteDatasourceRef ref,
    ) create,
  ) {
    return HistoryRemoteDatasourceProvider._(create: create);
  }

  @override
  HistoryRemoteDatasource create(HistoryRemoteDatasourceRef ref) {
    final _$cb = _createCb ?? historyRemoteDatasource;
    return _$cb(ref);
  }
}

String _$historyRemoteDatasourceHash() =>
    r'95e35f2e15a515436dacd047371448a1c945cba0';

// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use_from_same_package, unreachable_from_main, invalid_use_of_internal_member
