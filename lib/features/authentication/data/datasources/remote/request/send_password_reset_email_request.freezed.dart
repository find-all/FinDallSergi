// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_password_reset_email_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendPasswordResetEmailRequest _$SendPasswordResetEmailRequestFromJson(
    Map<String, dynamic> json) {
  return _SendPasswordResetEmailRequest.fromJson(json);
}

/// @nodoc
mixin _$SendPasswordResetEmailRequest {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendPasswordResetEmailRequestCopyWith<SendPasswordResetEmailRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendPasswordResetEmailRequestCopyWith<$Res> {
  factory $SendPasswordResetEmailRequestCopyWith(
          SendPasswordResetEmailRequest value,
          $Res Function(SendPasswordResetEmailRequest) then) =
      _$SendPasswordResetEmailRequestCopyWithImpl<$Res,
          SendPasswordResetEmailRequest>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$SendPasswordResetEmailRequestCopyWithImpl<$Res,
        $Val extends SendPasswordResetEmailRequest>
    implements $SendPasswordResetEmailRequestCopyWith<$Res> {
  _$SendPasswordResetEmailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendPasswordResetEmailRequestImplCopyWith<$Res>
    implements $SendPasswordResetEmailRequestCopyWith<$Res> {
  factory _$$SendPasswordResetEmailRequestImplCopyWith(
          _$SendPasswordResetEmailRequestImpl value,
          $Res Function(_$SendPasswordResetEmailRequestImpl) then) =
      __$$SendPasswordResetEmailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendPasswordResetEmailRequestImplCopyWithImpl<$Res>
    extends _$SendPasswordResetEmailRequestCopyWithImpl<$Res,
        _$SendPasswordResetEmailRequestImpl>
    implements _$$SendPasswordResetEmailRequestImplCopyWith<$Res> {
  __$$SendPasswordResetEmailRequestImplCopyWithImpl(
      _$SendPasswordResetEmailRequestImpl _value,
      $Res Function(_$SendPasswordResetEmailRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendPasswordResetEmailRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendPasswordResetEmailRequestImpl
    implements _SendPasswordResetEmailRequest {
  const _$SendPasswordResetEmailRequestImpl({required this.email});

  factory _$SendPasswordResetEmailRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SendPasswordResetEmailRequestImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'SendPasswordResetEmailRequest(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPasswordResetEmailRequestImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPasswordResetEmailRequestImplCopyWith<
          _$SendPasswordResetEmailRequestImpl>
      get copyWith => __$$SendPasswordResetEmailRequestImplCopyWithImpl<
          _$SendPasswordResetEmailRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendPasswordResetEmailRequestImplToJson(
      this,
    );
  }
}

abstract class _SendPasswordResetEmailRequest
    implements SendPasswordResetEmailRequest {
  const factory _SendPasswordResetEmailRequest({required final String email}) =
      _$SendPasswordResetEmailRequestImpl;

  factory _SendPasswordResetEmailRequest.fromJson(Map<String, dynamic> json) =
      _$SendPasswordResetEmailRequestImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$SendPasswordResetEmailRequestImplCopyWith<
          _$SendPasswordResetEmailRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
