// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_favorite_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddFavoriteRequest _$AddFavoriteRequestFromJson(Map<String, dynamic> json) {
  return _AddFavoriteRequest.fromJson(json);
}

/// @nodoc
mixin _$AddFavoriteRequest {
  int get userId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddFavoriteRequestCopyWith<AddFavoriteRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddFavoriteRequestCopyWith<$Res> {
  factory $AddFavoriteRequestCopyWith(
          AddFavoriteRequest value, $Res Function(AddFavoriteRequest) then) =
      _$AddFavoriteRequestCopyWithImpl<$Res, AddFavoriteRequest>;
  @useResult
  $Res call({int userId, String id});
}

/// @nodoc
class _$AddFavoriteRequestCopyWithImpl<$Res, $Val extends AddFavoriteRequest>
    implements $AddFavoriteRequestCopyWith<$Res> {
  _$AddFavoriteRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddFavoriteRequestImplCopyWith<$Res>
    implements $AddFavoriteRequestCopyWith<$Res> {
  factory _$$AddFavoriteRequestImplCopyWith(_$AddFavoriteRequestImpl value,
          $Res Function(_$AddFavoriteRequestImpl) then) =
      __$$AddFavoriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String id});
}

/// @nodoc
class __$$AddFavoriteRequestImplCopyWithImpl<$Res>
    extends _$AddFavoriteRequestCopyWithImpl<$Res, _$AddFavoriteRequestImpl>
    implements _$$AddFavoriteRequestImplCopyWith<$Res> {
  __$$AddFavoriteRequestImplCopyWithImpl(_$AddFavoriteRequestImpl _value,
      $Res Function(_$AddFavoriteRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? id = null,
  }) {
    return _then(_$AddFavoriteRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddFavoriteRequestImpl implements _AddFavoriteRequest {
  const _$AddFavoriteRequestImpl({required this.userId, required this.id});

  factory _$AddFavoriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddFavoriteRequestImplFromJson(json);

  @override
  final int userId;
  @override
  final String id;

  @override
  String toString() {
    return 'AddFavoriteRequest(userId: $userId, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoriteRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavoriteRequestImplCopyWith<_$AddFavoriteRequestImpl> get copyWith =>
      __$$AddFavoriteRequestImplCopyWithImpl<_$AddFavoriteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddFavoriteRequestImplToJson(
      this,
    );
  }
}

abstract class _AddFavoriteRequest implements AddFavoriteRequest {
  const factory _AddFavoriteRequest(
      {required final int userId,
      required final String id}) = _$AddFavoriteRequestImpl;

  factory _AddFavoriteRequest.fromJson(Map<String, dynamic> json) =
      _$AddFavoriteRequestImpl.fromJson;

  @override
  int get userId;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$AddFavoriteRequestImplCopyWith<_$AddFavoriteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
