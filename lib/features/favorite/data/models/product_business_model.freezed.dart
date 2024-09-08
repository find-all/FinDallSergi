// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_business_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductBusinessModel _$ProductBusinessModelFromJson(Map<String, dynamic> json) {
  return _ProductBusinessModel.fromJson(json);
}

/// @nodoc
mixin _$ProductBusinessModel {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductBusinessModelCopyWith<ProductBusinessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductBusinessModelCopyWith<$Res> {
  factory $ProductBusinessModelCopyWith(ProductBusinessModel value,
          $Res Function(ProductBusinessModel) then) =
      _$ProductBusinessModelCopyWithImpl<$Res, ProductBusinessModel>;
  @useResult
  $Res call({@JsonKey(name: '_id') String id});
}

/// @nodoc
class _$ProductBusinessModelCopyWithImpl<$Res,
        $Val extends ProductBusinessModel>
    implements $ProductBusinessModelCopyWith<$Res> {
  _$ProductBusinessModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductBusinessModelImplCopyWith<$Res>
    implements $ProductBusinessModelCopyWith<$Res> {
  factory _$$ProductBusinessModelImplCopyWith(_$ProductBusinessModelImpl value,
          $Res Function(_$ProductBusinessModelImpl) then) =
      __$$ProductBusinessModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '_id') String id});
}

/// @nodoc
class __$$ProductBusinessModelImplCopyWithImpl<$Res>
    extends _$ProductBusinessModelCopyWithImpl<$Res, _$ProductBusinessModelImpl>
    implements _$$ProductBusinessModelImplCopyWith<$Res> {
  __$$ProductBusinessModelImplCopyWithImpl(_$ProductBusinessModelImpl _value,
      $Res Function(_$ProductBusinessModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ProductBusinessModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductBusinessModelImpl implements _ProductBusinessModel {
  const _$ProductBusinessModelImpl({@JsonKey(name: '_id') required this.id});

  factory _$ProductBusinessModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductBusinessModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;

  @override
  String toString() {
    return 'ProductBusinessModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductBusinessModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductBusinessModelImplCopyWith<_$ProductBusinessModelImpl>
      get copyWith =>
          __$$ProductBusinessModelImplCopyWithImpl<_$ProductBusinessModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductBusinessModelImplToJson(
      this,
    );
  }
}

abstract class _ProductBusinessModel implements ProductBusinessModel {
  const factory _ProductBusinessModel(
          {@JsonKey(name: '_id') required final String id}) =
      _$ProductBusinessModelImpl;

  factory _ProductBusinessModel.fromJson(Map<String, dynamic> json) =
      _$ProductBusinessModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$ProductBusinessModelImplCopyWith<_$ProductBusinessModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
