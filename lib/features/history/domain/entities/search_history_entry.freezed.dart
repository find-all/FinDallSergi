// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_history_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchHistoryEntry {
  String get id => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get businessId => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            DateTime timestamp,
            String productId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)
        product,
    required TResult Function(
            String id,
            DateTime timestamp,
            String serviceId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)
        service,
    required TResult Function(String id, DateTime timestamp, String businessId,
            String name, String description, String type, String? imageUrl)
        business,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            DateTime timestamp,
            String productId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        product,
    TResult? Function(
            String id,
            DateTime timestamp,
            String serviceId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        service,
    TResult? Function(String id, DateTime timestamp, String businessId,
            String name, String description, String type, String? imageUrl)?
        business,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            DateTime timestamp,
            String productId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        product,
    TResult Function(
            String id,
            DateTime timestamp,
            String serviceId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        service,
    TResult Function(String id, DateTime timestamp, String businessId,
            String name, String description, String type, String? imageUrl)?
        business,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchHistoryEntryProduct value) product,
    required TResult Function(SearchHistoryEntryService value) service,
    required TResult Function(SearchHistoryEntryBusiness value) business,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchHistoryEntryProduct value)? product,
    TResult? Function(SearchHistoryEntryService value)? service,
    TResult? Function(SearchHistoryEntryBusiness value)? business,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchHistoryEntryProduct value)? product,
    TResult Function(SearchHistoryEntryService value)? service,
    TResult Function(SearchHistoryEntryBusiness value)? business,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchHistoryEntryCopyWith<SearchHistoryEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchHistoryEntryCopyWith<$Res> {
  factory $SearchHistoryEntryCopyWith(
          SearchHistoryEntry value, $Res Function(SearchHistoryEntry) then) =
      _$SearchHistoryEntryCopyWithImpl<$Res, SearchHistoryEntry>;
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      String name,
      String description,
      String type,
      String businessId,
      String? imageUrl});
}

/// @nodoc
class _$SearchHistoryEntryCopyWithImpl<$Res, $Val extends SearchHistoryEntry>
    implements $SearchHistoryEntryCopyWith<$Res> {
  _$SearchHistoryEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? businessId = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchHistoryEntryProductImplCopyWith<$Res>
    implements $SearchHistoryEntryCopyWith<$Res> {
  factory _$$SearchHistoryEntryProductImplCopyWith(
          _$SearchHistoryEntryProductImpl value,
          $Res Function(_$SearchHistoryEntryProductImpl) then) =
      __$$SearchHistoryEntryProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      String productId,
      String name,
      String description,
      String type,
      String businessId,
      String businessName,
      String? imageUrl});
}

/// @nodoc
class __$$SearchHistoryEntryProductImplCopyWithImpl<$Res>
    extends _$SearchHistoryEntryCopyWithImpl<$Res,
        _$SearchHistoryEntryProductImpl>
    implements _$$SearchHistoryEntryProductImplCopyWith<$Res> {
  __$$SearchHistoryEntryProductImplCopyWithImpl(
      _$SearchHistoryEntryProductImpl _value,
      $Res Function(_$SearchHistoryEntryProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? productId = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? businessId = null,
    Object? businessName = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$SearchHistoryEntryProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchHistoryEntryProductImpl implements SearchHistoryEntryProduct {
  const _$SearchHistoryEntryProductImpl(
      {required this.id,
      required this.timestamp,
      required this.productId,
      required this.name,
      required this.description,
      required this.type,
      required this.businessId,
      required this.businessName,
      this.imageUrl});

  @override
  final String id;
  @override
  final DateTime timestamp;
  @override
  final String productId;
  @override
  final String name;
  @override
  final String description;
  @override
  final String type;
  @override
  final String businessId;
  @override
  final String businessName;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'SearchHistoryEntry.product(id: $id, timestamp: $timestamp, productId: $productId, name: $name, description: $description, type: $type, businessId: $businessId, businessName: $businessName, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoryEntryProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, timestamp, productId, name,
      description, type, businessId, businessName, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHistoryEntryProductImplCopyWith<_$SearchHistoryEntryProductImpl>
      get copyWith => __$$SearchHistoryEntryProductImplCopyWithImpl<
          _$SearchHistoryEntryProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            DateTime timestamp,
            String productId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)
        product,
    required TResult Function(
            String id,
            DateTime timestamp,
            String serviceId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)
        service,
    required TResult Function(String id, DateTime timestamp, String businessId,
            String name, String description, String type, String? imageUrl)
        business,
  }) {
    return product(id, timestamp, productId, name, description, type,
        businessId, businessName, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            DateTime timestamp,
            String productId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        product,
    TResult? Function(
            String id,
            DateTime timestamp,
            String serviceId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        service,
    TResult? Function(String id, DateTime timestamp, String businessId,
            String name, String description, String type, String? imageUrl)?
        business,
  }) {
    return product?.call(id, timestamp, productId, name, description, type,
        businessId, businessName, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            DateTime timestamp,
            String productId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        product,
    TResult Function(
            String id,
            DateTime timestamp,
            String serviceId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        service,
    TResult Function(String id, DateTime timestamp, String businessId,
            String name, String description, String type, String? imageUrl)?
        business,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(id, timestamp, productId, name, description, type,
          businessId, businessName, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchHistoryEntryProduct value) product,
    required TResult Function(SearchHistoryEntryService value) service,
    required TResult Function(SearchHistoryEntryBusiness value) business,
  }) {
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchHistoryEntryProduct value)? product,
    TResult? Function(SearchHistoryEntryService value)? service,
    TResult? Function(SearchHistoryEntryBusiness value)? business,
  }) {
    return product?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchHistoryEntryProduct value)? product,
    TResult Function(SearchHistoryEntryService value)? service,
    TResult Function(SearchHistoryEntryBusiness value)? business,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(this);
    }
    return orElse();
  }
}

abstract class SearchHistoryEntryProduct implements SearchHistoryEntry {
  const factory SearchHistoryEntryProduct(
      {required final String id,
      required final DateTime timestamp,
      required final String productId,
      required final String name,
      required final String description,
      required final String type,
      required final String businessId,
      required final String businessName,
      final String? imageUrl}) = _$SearchHistoryEntryProductImpl;

  @override
  String get id;
  @override
  DateTime get timestamp;
  String get productId;
  @override
  String get name;
  @override
  String get description;
  @override
  String get type;
  @override
  String get businessId;
  String get businessName;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$SearchHistoryEntryProductImplCopyWith<_$SearchHistoryEntryProductImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchHistoryEntryServiceImplCopyWith<$Res>
    implements $SearchHistoryEntryCopyWith<$Res> {
  factory _$$SearchHistoryEntryServiceImplCopyWith(
          _$SearchHistoryEntryServiceImpl value,
          $Res Function(_$SearchHistoryEntryServiceImpl) then) =
      __$$SearchHistoryEntryServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      String serviceId,
      String name,
      String description,
      String type,
      String businessId,
      String businessName,
      String? imageUrl});
}

/// @nodoc
class __$$SearchHistoryEntryServiceImplCopyWithImpl<$Res>
    extends _$SearchHistoryEntryCopyWithImpl<$Res,
        _$SearchHistoryEntryServiceImpl>
    implements _$$SearchHistoryEntryServiceImplCopyWith<$Res> {
  __$$SearchHistoryEntryServiceImplCopyWithImpl(
      _$SearchHistoryEntryServiceImpl _value,
      $Res Function(_$SearchHistoryEntryServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? serviceId = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? businessId = null,
    Object? businessName = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$SearchHistoryEntryServiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchHistoryEntryServiceImpl implements SearchHistoryEntryService {
  const _$SearchHistoryEntryServiceImpl(
      {required this.id,
      required this.timestamp,
      required this.serviceId,
      required this.name,
      required this.description,
      required this.type,
      required this.businessId,
      required this.businessName,
      this.imageUrl});

  @override
  final String id;
  @override
  final DateTime timestamp;
  @override
  final String serviceId;
  @override
  final String name;
  @override
  final String description;
  @override
  final String type;
  @override
  final String businessId;
  @override
  final String businessName;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'SearchHistoryEntry.service(id: $id, timestamp: $timestamp, serviceId: $serviceId, name: $name, description: $description, type: $type, businessId: $businessId, businessName: $businessName, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoryEntryServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, timestamp, serviceId, name,
      description, type, businessId, businessName, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHistoryEntryServiceImplCopyWith<_$SearchHistoryEntryServiceImpl>
      get copyWith => __$$SearchHistoryEntryServiceImplCopyWithImpl<
          _$SearchHistoryEntryServiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            DateTime timestamp,
            String productId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)
        product,
    required TResult Function(
            String id,
            DateTime timestamp,
            String serviceId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)
        service,
    required TResult Function(String id, DateTime timestamp, String businessId,
            String name, String description, String type, String? imageUrl)
        business,
  }) {
    return service(id, timestamp, serviceId, name, description, type,
        businessId, businessName, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            DateTime timestamp,
            String productId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        product,
    TResult? Function(
            String id,
            DateTime timestamp,
            String serviceId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        service,
    TResult? Function(String id, DateTime timestamp, String businessId,
            String name, String description, String type, String? imageUrl)?
        business,
  }) {
    return service?.call(id, timestamp, serviceId, name, description, type,
        businessId, businessName, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            DateTime timestamp,
            String productId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        product,
    TResult Function(
            String id,
            DateTime timestamp,
            String serviceId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        service,
    TResult Function(String id, DateTime timestamp, String businessId,
            String name, String description, String type, String? imageUrl)?
        business,
    required TResult orElse(),
  }) {
    if (service != null) {
      return service(id, timestamp, serviceId, name, description, type,
          businessId, businessName, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchHistoryEntryProduct value) product,
    required TResult Function(SearchHistoryEntryService value) service,
    required TResult Function(SearchHistoryEntryBusiness value) business,
  }) {
    return service(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchHistoryEntryProduct value)? product,
    TResult? Function(SearchHistoryEntryService value)? service,
    TResult? Function(SearchHistoryEntryBusiness value)? business,
  }) {
    return service?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchHistoryEntryProduct value)? product,
    TResult Function(SearchHistoryEntryService value)? service,
    TResult Function(SearchHistoryEntryBusiness value)? business,
    required TResult orElse(),
  }) {
    if (service != null) {
      return service(this);
    }
    return orElse();
  }
}

abstract class SearchHistoryEntryService implements SearchHistoryEntry {
  const factory SearchHistoryEntryService(
      {required final String id,
      required final DateTime timestamp,
      required final String serviceId,
      required final String name,
      required final String description,
      required final String type,
      required final String businessId,
      required final String businessName,
      final String? imageUrl}) = _$SearchHistoryEntryServiceImpl;

  @override
  String get id;
  @override
  DateTime get timestamp;
  String get serviceId;
  @override
  String get name;
  @override
  String get description;
  @override
  String get type;
  @override
  String get businessId;
  String get businessName;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$SearchHistoryEntryServiceImplCopyWith<_$SearchHistoryEntryServiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchHistoryEntryBusinessImplCopyWith<$Res>
    implements $SearchHistoryEntryCopyWith<$Res> {
  factory _$$SearchHistoryEntryBusinessImplCopyWith(
          _$SearchHistoryEntryBusinessImpl value,
          $Res Function(_$SearchHistoryEntryBusinessImpl) then) =
      __$$SearchHistoryEntryBusinessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime timestamp,
      String businessId,
      String name,
      String description,
      String type,
      String? imageUrl});
}

/// @nodoc
class __$$SearchHistoryEntryBusinessImplCopyWithImpl<$Res>
    extends _$SearchHistoryEntryCopyWithImpl<$Res,
        _$SearchHistoryEntryBusinessImpl>
    implements _$$SearchHistoryEntryBusinessImplCopyWith<$Res> {
  __$$SearchHistoryEntryBusinessImplCopyWithImpl(
      _$SearchHistoryEntryBusinessImpl _value,
      $Res Function(_$SearchHistoryEntryBusinessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timestamp = null,
    Object? businessId = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$SearchHistoryEntryBusinessImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchHistoryEntryBusinessImpl implements SearchHistoryEntryBusiness {
  const _$SearchHistoryEntryBusinessImpl(
      {required this.id,
      required this.timestamp,
      required this.businessId,
      required this.name,
      required this.description,
      required this.type,
      this.imageUrl});

  @override
  final String id;
  @override
  final DateTime timestamp;
  @override
  final String businessId;
  @override
  final String name;
  @override
  final String description;
  @override
  final String type;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'SearchHistoryEntry.business(id: $id, timestamp: $timestamp, businessId: $businessId, name: $name, description: $description, type: $type, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchHistoryEntryBusinessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, timestamp, businessId, name,
      description, type, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchHistoryEntryBusinessImplCopyWith<_$SearchHistoryEntryBusinessImpl>
      get copyWith => __$$SearchHistoryEntryBusinessImplCopyWithImpl<
          _$SearchHistoryEntryBusinessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            DateTime timestamp,
            String productId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)
        product,
    required TResult Function(
            String id,
            DateTime timestamp,
            String serviceId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)
        service,
    required TResult Function(String id, DateTime timestamp, String businessId,
            String name, String description, String type, String? imageUrl)
        business,
  }) {
    return business(
        id, timestamp, businessId, name, description, type, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            DateTime timestamp,
            String productId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        product,
    TResult? Function(
            String id,
            DateTime timestamp,
            String serviceId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        service,
    TResult? Function(String id, DateTime timestamp, String businessId,
            String name, String description, String type, String? imageUrl)?
        business,
  }) {
    return business?.call(
        id, timestamp, businessId, name, description, type, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            DateTime timestamp,
            String productId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        product,
    TResult Function(
            String id,
            DateTime timestamp,
            String serviceId,
            String name,
            String description,
            String type,
            String businessId,
            String businessName,
            String? imageUrl)?
        service,
    TResult Function(String id, DateTime timestamp, String businessId,
            String name, String description, String type, String? imageUrl)?
        business,
    required TResult orElse(),
  }) {
    if (business != null) {
      return business(
          id, timestamp, businessId, name, description, type, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchHistoryEntryProduct value) product,
    required TResult Function(SearchHistoryEntryService value) service,
    required TResult Function(SearchHistoryEntryBusiness value) business,
  }) {
    return business(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchHistoryEntryProduct value)? product,
    TResult? Function(SearchHistoryEntryService value)? service,
    TResult? Function(SearchHistoryEntryBusiness value)? business,
  }) {
    return business?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchHistoryEntryProduct value)? product,
    TResult Function(SearchHistoryEntryService value)? service,
    TResult Function(SearchHistoryEntryBusiness value)? business,
    required TResult orElse(),
  }) {
    if (business != null) {
      return business(this);
    }
    return orElse();
  }
}

abstract class SearchHistoryEntryBusiness implements SearchHistoryEntry {
  const factory SearchHistoryEntryBusiness(
      {required final String id,
      required final DateTime timestamp,
      required final String businessId,
      required final String name,
      required final String description,
      required final String type,
      final String? imageUrl}) = _$SearchHistoryEntryBusinessImpl;

  @override
  String get id;
  @override
  DateTime get timestamp;
  @override
  String get businessId;
  @override
  String get name;
  @override
  String get description;
  @override
  String get type;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$SearchHistoryEntryBusinessImplCopyWith<_$SearchHistoryEntryBusinessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
