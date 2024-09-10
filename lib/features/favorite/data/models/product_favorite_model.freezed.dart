// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_favorite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductFavoriteModel _$ProductFavoriteModelFromJson(Map<String, dynamic> json) {
  return _ProductFavoriteModel.fromJson(json);
}

/// @nodoc
mixin _$ProductFavoriteModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductFavoriteModelCopyWith<ProductFavoriteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFavoriteModelCopyWith<$Res> {
  factory $ProductFavoriteModelCopyWith(ProductFavoriteModel value,
          $Res Function(ProductFavoriteModel) then) =
      _$ProductFavoriteModelCopyWithImpl<$Res, ProductFavoriteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'brand') String? brand,
      @JsonKey(name: 'images') List<String> images});
}

/// @nodoc
class _$ProductFavoriteModelCopyWithImpl<$Res,
        $Val extends ProductFavoriteModel>
    implements $ProductFavoriteModelCopyWith<$Res> {
  _$ProductFavoriteModelCopyWithImpl(this._value, this._then);

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
    Object? brand = freezed,
    Object? images = null,
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
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductFavoriteModelImplCopyWith<$Res>
    implements $ProductFavoriteModelCopyWith<$Res> {
  factory _$$ProductFavoriteModelImplCopyWith(_$ProductFavoriteModelImpl value,
          $Res Function(_$ProductFavoriteModelImpl) then) =
      __$$ProductFavoriteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'brand') String? brand,
      @JsonKey(name: 'images') List<String> images});
}

/// @nodoc
class __$$ProductFavoriteModelImplCopyWithImpl<$Res>
    extends _$ProductFavoriteModelCopyWithImpl<$Res, _$ProductFavoriteModelImpl>
    implements _$$ProductFavoriteModelImplCopyWith<$Res> {
  __$$ProductFavoriteModelImplCopyWithImpl(_$ProductFavoriteModelImpl _value,
      $Res Function(_$ProductFavoriteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? brand = freezed,
    Object? images = null,
  }) {
    return _then(_$ProductFavoriteModelImpl(
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
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductFavoriteModelImpl implements _ProductFavoriteModel {
  const _$ProductFavoriteModelImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'brand') this.brand,
      @JsonKey(name: 'images') final List<String> images = const []})
      : _images = images;

  factory _$ProductFavoriteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductFavoriteModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'brand')
  final String? brand;
  final List<String> _images;
  @override
  @JsonKey(name: 'images')
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'ProductFavoriteModel(id: $id, name: $name, description: $description, type: $type, brand: $brand, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductFavoriteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, type,
      brand, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductFavoriteModelImplCopyWith<_$ProductFavoriteModelImpl>
      get copyWith =>
          __$$ProductFavoriteModelImplCopyWithImpl<_$ProductFavoriteModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductFavoriteModelImplToJson(
      this,
    );
  }
}

abstract class _ProductFavoriteModel implements ProductFavoriteModel {
  const factory _ProductFavoriteModel(
          {@JsonKey(name: '_id') required final String id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'type') required final String type,
          @JsonKey(name: 'brand') final String? brand,
          @JsonKey(name: 'images') final List<String> images}) =
      _$ProductFavoriteModelImpl;

  factory _ProductFavoriteModel.fromJson(Map<String, dynamic> json) =
      _$ProductFavoriteModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'brand')
  String? get brand;
  @override
  @JsonKey(name: 'images')
  List<String> get images;
  @override
  @JsonKey(ignore: true)
  _$$ProductFavoriteModelImplCopyWith<_$ProductFavoriteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
