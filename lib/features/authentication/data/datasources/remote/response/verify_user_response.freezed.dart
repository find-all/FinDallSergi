// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyUserResponse _$VerifyUserResponseFromJson(Map<String, dynamic> json) {
  return _VerifyUserResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifyUserResponse {
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  UserModel get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyUserResponseCopyWith<VerifyUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyUserResponseCopyWith<$Res> {
  factory $VerifyUserResponseCopyWith(
          VerifyUserResponse value, $Res Function(VerifyUserResponse) then) =
      _$VerifyUserResponseCopyWithImpl<$Res, VerifyUserResponse>;
  @useResult
  $Res call(
      {String token,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'user') UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$VerifyUserResponseCopyWithImpl<$Res, $Val extends VerifyUserResponse>
    implements $VerifyUserResponseCopyWith<$Res> {
  _$VerifyUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? refreshToken = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerifyUserResponseImplCopyWith<$Res>
    implements $VerifyUserResponseCopyWith<$Res> {
  factory _$$VerifyUserResponseImplCopyWith(_$VerifyUserResponseImpl value,
          $Res Function(_$VerifyUserResponseImpl) then) =
      __$$VerifyUserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      @JsonKey(name: 'refresh_token') String refreshToken,
      @JsonKey(name: 'user') UserModel user});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$VerifyUserResponseImplCopyWithImpl<$Res>
    extends _$VerifyUserResponseCopyWithImpl<$Res, _$VerifyUserResponseImpl>
    implements _$$VerifyUserResponseImplCopyWith<$Res> {
  __$$VerifyUserResponseImplCopyWithImpl(_$VerifyUserResponseImpl _value,
      $Res Function(_$VerifyUserResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? refreshToken = null,
    Object? user = null,
  }) {
    return _then(_$VerifyUserResponseImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyUserResponseImpl implements _VerifyUserResponse {
  const _$VerifyUserResponseImpl(
      {required this.token,
      @JsonKey(name: 'refresh_token') required this.refreshToken,
      @JsonKey(name: 'user') required this.user});

  factory _$VerifyUserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyUserResponseImplFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;
  @override
  @JsonKey(name: 'user')
  final UserModel user;

  @override
  String toString() {
    return 'VerifyUserResponse(token: $token, refreshToken: $refreshToken, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyUserResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, refreshToken, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyUserResponseImplCopyWith<_$VerifyUserResponseImpl> get copyWith =>
      __$$VerifyUserResponseImplCopyWithImpl<_$VerifyUserResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyUserResponseImplToJson(
      this,
    );
  }
}

abstract class _VerifyUserResponse implements VerifyUserResponse {
  const factory _VerifyUserResponse(
          {required final String token,
          @JsonKey(name: 'refresh_token') required final String refreshToken,
          @JsonKey(name: 'user') required final UserModel user}) =
      _$VerifyUserResponseImpl;

  factory _VerifyUserResponse.fromJson(Map<String, dynamic> json) =
      _$VerifyUserResponseImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(name: 'user')
  UserModel get user;
  @override
  @JsonKey(ignore: true)
  _$$VerifyUserResponseImplCopyWith<_$VerifyUserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
