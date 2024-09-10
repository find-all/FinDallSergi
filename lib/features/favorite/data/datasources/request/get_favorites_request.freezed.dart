// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_favorites_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetFavoritesRequest _$GetFavoritesRequestFromJson(Map<String, dynamic> json) {
  return _GetFavoritesRequest.fromJson(json);
}

/// @nodoc
mixin _$GetFavoritesRequest {
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFavoritesRequestCopyWith<GetFavoritesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFavoritesRequestCopyWith<$Res> {
  factory $GetFavoritesRequestCopyWith(
          GetFavoritesRequest value, $Res Function(GetFavoritesRequest) then) =
      _$GetFavoritesRequestCopyWithImpl<$Res, GetFavoritesRequest>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class _$GetFavoritesRequestCopyWithImpl<$Res, $Val extends GetFavoritesRequest>
    implements $GetFavoritesRequestCopyWith<$Res> {
  _$GetFavoritesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetFavoritesRequestImplCopyWith<$Res>
    implements $GetFavoritesRequestCopyWith<$Res> {
  factory _$$GetFavoritesRequestImplCopyWith(_$GetFavoritesRequestImpl value,
          $Res Function(_$GetFavoritesRequestImpl) then) =
      __$$GetFavoritesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$GetFavoritesRequestImplCopyWithImpl<$Res>
    extends _$GetFavoritesRequestCopyWithImpl<$Res, _$GetFavoritesRequestImpl>
    implements _$$GetFavoritesRequestImplCopyWith<$Res> {
  __$$GetFavoritesRequestImplCopyWithImpl(_$GetFavoritesRequestImpl _value,
      $Res Function(_$GetFavoritesRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetFavoritesRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFavoritesRequestImpl implements _GetFavoritesRequest {
  const _$GetFavoritesRequestImpl({required this.userId});

  factory _$GetFavoritesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFavoritesRequestImplFromJson(json);

  @override
  final int userId;

  @override
  String toString() {
    return 'GetFavoritesRequest(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavoritesRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFavoritesRequestImplCopyWith<_$GetFavoritesRequestImpl> get copyWith =>
      __$$GetFavoritesRequestImplCopyWithImpl<_$GetFavoritesRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFavoritesRequestImplToJson(
      this,
    );
  }
}

abstract class _GetFavoritesRequest implements GetFavoritesRequest {
  const factory _GetFavoritesRequest({required final int userId}) =
      _$GetFavoritesRequestImpl;

  factory _GetFavoritesRequest.fromJson(Map<String, dynamic> json) =
      _$GetFavoritesRequestImpl.fromJson;

  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$GetFavoritesRequestImplCopyWith<_$GetFavoritesRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
