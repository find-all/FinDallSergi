// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Favorite {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, String description,
            String type, String? imageUrl)
        business,
    required TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)
        product,
    required TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)
        service,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String name, String description, String type,
            String? imageUrl)?
        business,
    TResult? Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        product,
    TResult? Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        service,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, String description, String type,
            String? imageUrl)?
        business,
    TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        product,
    TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        service,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteBusiness value) business,
    required TResult Function(FavoriteProduct value) product,
    required TResult Function(FavoriteService value) service,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteBusiness value)? business,
    TResult? Function(FavoriteProduct value)? product,
    TResult? Function(FavoriteService value)? service,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteBusiness value)? business,
    TResult Function(FavoriteProduct value)? product,
    TResult Function(FavoriteService value)? service,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteCopyWith<Favorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteCopyWith<$Res> {
  factory $FavoriteCopyWith(Favorite value, $Res Function(Favorite) then) =
      _$FavoriteCopyWithImpl<$Res, Favorite>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String type,
      String? imageUrl});
}

/// @nodoc
class _$FavoriteCopyWithImpl<$Res, $Val extends Favorite>
    implements $FavoriteCopyWith<$Res> {
  _$FavoriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteBusinessImplCopyWith<$Res>
    implements $FavoriteCopyWith<$Res> {
  factory _$$FavoriteBusinessImplCopyWith(_$FavoriteBusinessImpl value,
          $Res Function(_$FavoriteBusinessImpl) then) =
      __$$FavoriteBusinessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String type,
      String? imageUrl});
}

/// @nodoc
class __$$FavoriteBusinessImplCopyWithImpl<$Res>
    extends _$FavoriteCopyWithImpl<$Res, _$FavoriteBusinessImpl>
    implements _$$FavoriteBusinessImplCopyWith<$Res> {
  __$$FavoriteBusinessImplCopyWithImpl(_$FavoriteBusinessImpl _value,
      $Res Function(_$FavoriteBusinessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$FavoriteBusinessImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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

class _$FavoriteBusinessImpl implements FavoriteBusiness {
  const _$FavoriteBusinessImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.type,
      this.imageUrl});

  @override
  final String id;
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
    return 'Favorite.business(id: $id, name: $name, description: $description, type: $type, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteBusinessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, type, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteBusinessImplCopyWith<_$FavoriteBusinessImpl> get copyWith =>
      __$$FavoriteBusinessImplCopyWithImpl<_$FavoriteBusinessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, String description,
            String type, String? imageUrl)
        business,
    required TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)
        product,
    required TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)
        service,
  }) {
    return business(id, name, description, type, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String name, String description, String type,
            String? imageUrl)?
        business,
    TResult? Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        product,
    TResult? Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        service,
  }) {
    return business?.call(id, name, description, type, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, String description, String type,
            String? imageUrl)?
        business,
    TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        product,
    TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        service,
    required TResult orElse(),
  }) {
    if (business != null) {
      return business(id, name, description, type, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteBusiness value) business,
    required TResult Function(FavoriteProduct value) product,
    required TResult Function(FavoriteService value) service,
  }) {
    return business(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteBusiness value)? business,
    TResult? Function(FavoriteProduct value)? product,
    TResult? Function(FavoriteService value)? service,
  }) {
    return business?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteBusiness value)? business,
    TResult Function(FavoriteProduct value)? product,
    TResult Function(FavoriteService value)? service,
    required TResult orElse(),
  }) {
    if (business != null) {
      return business(this);
    }
    return orElse();
  }
}

abstract class FavoriteBusiness implements Favorite {
  const factory FavoriteBusiness(
      {required final String id,
      required final String name,
      required final String description,
      required final String type,
      final String? imageUrl}) = _$FavoriteBusinessImpl;

  @override
  String get id;
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
  _$$FavoriteBusinessImplCopyWith<_$FavoriteBusinessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteProductImplCopyWith<$Res>
    implements $FavoriteCopyWith<$Res> {
  factory _$$FavoriteProductImplCopyWith(_$FavoriteProductImpl value,
          $Res Function(_$FavoriteProductImpl) then) =
      __$$FavoriteProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String businessId,
      String businessName,
      String name,
      String description,
      String type,
      String? imageUrl});
}

/// @nodoc
class __$$FavoriteProductImplCopyWithImpl<$Res>
    extends _$FavoriteCopyWithImpl<$Res, _$FavoriteProductImpl>
    implements _$$FavoriteProductImplCopyWith<$Res> {
  __$$FavoriteProductImplCopyWithImpl(
      _$FavoriteProductImpl _value, $Res Function(_$FavoriteProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? businessId = null,
    Object? businessName = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$FavoriteProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
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

class _$FavoriteProductImpl implements FavoriteProduct {
  const _$FavoriteProductImpl(
      {required this.id,
      required this.businessId,
      required this.businessName,
      required this.name,
      required this.description,
      required this.type,
      this.imageUrl});

  @override
  final String id;
  @override
  final String businessId;
  @override
  final String businessName;
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
    return 'Favorite.product(id: $id, businessId: $businessId, businessName: $businessName, name: $name, description: $description, type: $type, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, businessId, businessName,
      name, description, type, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteProductImplCopyWith<_$FavoriteProductImpl> get copyWith =>
      __$$FavoriteProductImplCopyWithImpl<_$FavoriteProductImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, String description,
            String type, String? imageUrl)
        business,
    required TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)
        product,
    required TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)
        service,
  }) {
    return product(
        id, businessId, businessName, name, description, type, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String name, String description, String type,
            String? imageUrl)?
        business,
    TResult? Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        product,
    TResult? Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        service,
  }) {
    return product?.call(
        id, businessId, businessName, name, description, type, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, String description, String type,
            String? imageUrl)?
        business,
    TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        product,
    TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        service,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(
          id, businessId, businessName, name, description, type, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteBusiness value) business,
    required TResult Function(FavoriteProduct value) product,
    required TResult Function(FavoriteService value) service,
  }) {
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteBusiness value)? business,
    TResult? Function(FavoriteProduct value)? product,
    TResult? Function(FavoriteService value)? service,
  }) {
    return product?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteBusiness value)? business,
    TResult Function(FavoriteProduct value)? product,
    TResult Function(FavoriteService value)? service,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(this);
    }
    return orElse();
  }
}

abstract class FavoriteProduct implements Favorite {
  const factory FavoriteProduct(
      {required final String id,
      required final String businessId,
      required final String businessName,
      required final String name,
      required final String description,
      required final String type,
      final String? imageUrl}) = _$FavoriteProductImpl;

  @override
  String get id;
  String get businessId;
  String get businessName;
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
  _$$FavoriteProductImplCopyWith<_$FavoriteProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteServiceImplCopyWith<$Res>
    implements $FavoriteCopyWith<$Res> {
  factory _$$FavoriteServiceImplCopyWith(_$FavoriteServiceImpl value,
          $Res Function(_$FavoriteServiceImpl) then) =
      __$$FavoriteServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String businessId,
      String businessName,
      String name,
      String description,
      String type,
      String? imageUrl});
}

/// @nodoc
class __$$FavoriteServiceImplCopyWithImpl<$Res>
    extends _$FavoriteCopyWithImpl<$Res, _$FavoriteServiceImpl>
    implements _$$FavoriteServiceImplCopyWith<$Res> {
  __$$FavoriteServiceImplCopyWithImpl(
      _$FavoriteServiceImpl _value, $Res Function(_$FavoriteServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? businessId = null,
    Object? businessName = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_$FavoriteServiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
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

class _$FavoriteServiceImpl implements FavoriteService {
  const _$FavoriteServiceImpl(
      {required this.id,
      required this.businessId,
      required this.businessName,
      required this.name,
      required this.description,
      required this.type,
      this.imageUrl});

  @override
  final String id;
  @override
  final String businessId;
  @override
  final String businessName;
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
    return 'Favorite.service(id: $id, businessId: $businessId, businessName: $businessName, name: $name, description: $description, type: $type, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, businessId, businessName,
      name, description, type, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteServiceImplCopyWith<_$FavoriteServiceImpl> get copyWith =>
      __$$FavoriteServiceImplCopyWithImpl<_$FavoriteServiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String name, String description,
            String type, String? imageUrl)
        business,
    required TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)
        product,
    required TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)
        service,
  }) {
    return service(
        id, businessId, businessName, name, description, type, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String name, String description, String type,
            String? imageUrl)?
        business,
    TResult? Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        product,
    TResult? Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        service,
  }) {
    return service?.call(
        id, businessId, businessName, name, description, type, imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String name, String description, String type,
            String? imageUrl)?
        business,
    TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        product,
    TResult Function(String id, String businessId, String businessName,
            String name, String description, String type, String? imageUrl)?
        service,
    required TResult orElse(),
  }) {
    if (service != null) {
      return service(
          id, businessId, businessName, name, description, type, imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteBusiness value) business,
    required TResult Function(FavoriteProduct value) product,
    required TResult Function(FavoriteService value) service,
  }) {
    return service(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteBusiness value)? business,
    TResult? Function(FavoriteProduct value)? product,
    TResult? Function(FavoriteService value)? service,
  }) {
    return service?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteBusiness value)? business,
    TResult Function(FavoriteProduct value)? product,
    TResult Function(FavoriteService value)? service,
    required TResult orElse(),
  }) {
    if (service != null) {
      return service(this);
    }
    return orElse();
  }
}

abstract class FavoriteService implements Favorite {
  const factory FavoriteService(
      {required final String id,
      required final String businessId,
      required final String businessName,
      required final String name,
      required final String description,
      required final String type,
      final String? imageUrl}) = _$FavoriteServiceImpl;

  @override
  String get id;
  String get businessId;
  String get businessName;
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
  _$$FavoriteServiceImplCopyWith<_$FavoriteServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
