// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_verification_code_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendVerificationCodeResponse _$SendVerificationCodeResponseFromJson(
    Map<String, dynamic> json) {
  return _SendVerificationCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$SendVerificationCodeResponse {
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendVerificationCodeResponseCopyWith<SendVerificationCodeResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendVerificationCodeResponseCopyWith<$Res> {
  factory $SendVerificationCodeResponseCopyWith(
          SendVerificationCodeResponse value,
          $Res Function(SendVerificationCodeResponse) then) =
      _$SendVerificationCodeResponseCopyWithImpl<$Res,
          SendVerificationCodeResponse>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$SendVerificationCodeResponseCopyWithImpl<$Res,
        $Val extends SendVerificationCodeResponse>
    implements $SendVerificationCodeResponseCopyWith<$Res> {
  _$SendVerificationCodeResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$SendVerificationCodeResponseImplCopyWith<$Res>
    implements $SendVerificationCodeResponseCopyWith<$Res> {
  factory _$$SendVerificationCodeResponseImplCopyWith(
          _$SendVerificationCodeResponseImpl value,
          $Res Function(_$SendVerificationCodeResponseImpl) then) =
      __$$SendVerificationCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$SendVerificationCodeResponseImplCopyWithImpl<$Res>
    extends _$SendVerificationCodeResponseCopyWithImpl<$Res,
        _$SendVerificationCodeResponseImpl>
    implements _$$SendVerificationCodeResponseImplCopyWith<$Res> {
  __$$SendVerificationCodeResponseImplCopyWithImpl(
      _$SendVerificationCodeResponseImpl _value,
      $Res Function(_$SendVerificationCodeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$SendVerificationCodeResponseImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendVerificationCodeResponseImpl
    implements _SendVerificationCodeResponse {
  const _$SendVerificationCodeResponseImpl({required this.token});

  factory _$SendVerificationCodeResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SendVerificationCodeResponseImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'SendVerificationCodeResponse(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendVerificationCodeResponseImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendVerificationCodeResponseImplCopyWith<
          _$SendVerificationCodeResponseImpl>
      get copyWith => __$$SendVerificationCodeResponseImplCopyWithImpl<
          _$SendVerificationCodeResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendVerificationCodeResponseImplToJson(
      this,
    );
  }
}

abstract class _SendVerificationCodeResponse
    implements SendVerificationCodeResponse {
  const factory _SendVerificationCodeResponse({required final String token}) =
      _$SendVerificationCodeResponseImpl;

  factory _SendVerificationCodeResponse.fromJson(Map<String, dynamic> json) =
      _$SendVerificationCodeResponseImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$SendVerificationCodeResponseImplCopyWith<
          _$SendVerificationCodeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
