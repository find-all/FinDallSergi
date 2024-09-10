// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_favorite_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceFavoriteModel _$ServiceFavoriteModelFromJson(Map<String, dynamic> json) {
  return _ServiceFavoriteModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceFavoriteModel {
  @JsonKey(name: 'uuid')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceFavoriteModelCopyWith<ServiceFavoriteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceFavoriteModelCopyWith<$Res> {
  factory $ServiceFavoriteModelCopyWith(ServiceFavoriteModel value,
          $Res Function(ServiceFavoriteModel) then) =
      _$ServiceFavoriteModelCopyWithImpl<$Res, ServiceFavoriteModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class _$ServiceFavoriteModelCopyWithImpl<$Res,
        $Val extends ServiceFavoriteModel>
    implements $ServiceFavoriteModelCopyWith<$Res> {
  _$ServiceFavoriteModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceFavoriteModelImplCopyWith<$Res>
    implements $ServiceFavoriteModelCopyWith<$Res> {
  factory _$$ServiceFavoriteModelImplCopyWith(_$ServiceFavoriteModelImpl value,
          $Res Function(_$ServiceFavoriteModelImpl) then) =
      __$$ServiceFavoriteModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'type') String type});
}

/// @nodoc
class __$$ServiceFavoriteModelImplCopyWithImpl<$Res>
    extends _$ServiceFavoriteModelCopyWithImpl<$Res, _$ServiceFavoriteModelImpl>
    implements _$$ServiceFavoriteModelImplCopyWith<$Res> {
  __$$ServiceFavoriteModelImplCopyWithImpl(_$ServiceFavoriteModelImpl _value,
      $Res Function(_$ServiceFavoriteModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
  }) {
    return _then(_$ServiceFavoriteModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceFavoriteModelImpl implements _ServiceFavoriteModel {
  const _$ServiceFavoriteModelImpl(
      {@JsonKey(name: 'uuid') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'type') required this.type});

  factory _$ServiceFavoriteModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceFavoriteModelImplFromJson(json);

  @override
  @JsonKey(name: 'uuid')
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
  String toString() {
    return 'ServiceFavoriteModel(id: $id, name: $name, description: $description, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceFavoriteModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceFavoriteModelImplCopyWith<_$ServiceFavoriteModelImpl>
      get copyWith =>
          __$$ServiceFavoriteModelImplCopyWithImpl<_$ServiceFavoriteModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceFavoriteModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceFavoriteModel implements ServiceFavoriteModel {
  const factory _ServiceFavoriteModel(
          {@JsonKey(name: 'uuid') required final String id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'type') required final String type}) =
      _$ServiceFavoriteModelImpl;

  factory _ServiceFavoriteModel.fromJson(Map<String, dynamic> json) =
      _$ServiceFavoriteModelImpl.fromJson;

  @override
  @JsonKey(name: 'uuid')
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
  @JsonKey(ignore: true)
  _$$ServiceFavoriteModelImplCopyWith<_$ServiceFavoriteModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
