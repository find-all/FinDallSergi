// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_password_reset_email_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendPasswordResetEmailResponse _$SendPasswordResetEmailResponseFromJson(
    Map<String, dynamic> json) {
  return _SendPasswordResetEmailResponse.fromJson(json);
}

/// @nodoc
mixin _$SendPasswordResetEmailResponse {
  @JsonKey(name: 'token_id')
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendPasswordResetEmailResponseCopyWith<SendPasswordResetEmailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPasswordResetEmailResponseCopyWith<$Res> {
  factory $SendPasswordResetEmailResponseCopyWith(
          SendPasswordResetEmailResponse value,
          $Res Function(SendPasswordResetEmailResponse) then) =
      _$SendPasswordResetEmailResponseCopyWithImpl<$Res,
          SendPasswordResetEmailResponse>;
  @useResult
  $Res call({@JsonKey(name: 'token_id') String token});
}

/// @nodoc
class _$SendPasswordResetEmailResponseCopyWithImpl<$Res,
        $Val extends SendPasswordResetEmailResponse>
    implements $SendPasswordResetEmailResponseCopyWith<$Res> {
  _$SendPasswordResetEmailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendPasswordResetEmailResponseImplCopyWith<$Res>
    implements $SendPasswordResetEmailResponseCopyWith<$Res> {
  factory _$$SendPasswordResetEmailResponseImplCopyWith(
          _$SendPasswordResetEmailResponseImpl value,
          $Res Function(_$SendPasswordResetEmailResponseImpl) then) =
      __$$SendPasswordResetEmailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'token_id') String token});
}

/// @nodoc
class __$$SendPasswordResetEmailResponseImplCopyWithImpl<$Res>
    extends _$SendPasswordResetEmailResponseCopyWithImpl<$Res,
        _$SendPasswordResetEmailResponseImpl>
    implements _$$SendPasswordResetEmailResponseImplCopyWith<$Res> {
  __$$SendPasswordResetEmailResponseImplCopyWithImpl(
      _$SendPasswordResetEmailResponseImpl _value,
      $Res Function(_$SendPasswordResetEmailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$SendPasswordResetEmailResponseImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendPasswordResetEmailResponseImpl
    implements _SendPasswordResetEmailResponse {
  const _$SendPasswordResetEmailResponseImpl(
      {@JsonKey(name: 'token_id') required this.token});

  factory _$SendPasswordResetEmailResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SendPasswordResetEmailResponseImplFromJson(json);

  @override
  @JsonKey(name: 'token_id')
  final String token;

  @override
  String toString() {
    return 'SendPasswordResetEmailResponse(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPasswordResetEmailResponseImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPasswordResetEmailResponseImplCopyWith<
          _$SendPasswordResetEmailResponseImpl>
      get copyWith => __$$SendPasswordResetEmailResponseImplCopyWithImpl<
          _$SendPasswordResetEmailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendPasswordResetEmailResponseImplToJson(
      this,
    );
  }
}

abstract class _SendPasswordResetEmailResponse
    implements SendPasswordResetEmailResponse {
  const factory _SendPasswordResetEmailResponse(
          {@JsonKey(name: 'token_id') required final String token}) =
      _$SendPasswordResetEmailResponseImpl;

  factory _SendPasswordResetEmailResponse.fromJson(Map<String, dynamic> json) =
      _$SendPasswordResetEmailResponseImpl.fromJson;

  @override
  @JsonKey(name: 'token_id')
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$SendPasswordResetEmailResponseImplCopyWith<
          _$SendPasswordResetEmailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
