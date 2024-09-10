// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_form_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResetPasswordFormState {
  Code get code => throw _privateConstructorUsedError;
  NewPassword get password => throw _privateConstructorUsedError;
  ConfirmNewPassword get confirmPassword => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordFormStateCopyWith<ResetPasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordFormStateCopyWith<$Res> {
  factory $ResetPasswordFormStateCopyWith(ResetPasswordFormState value,
          $Res Function(ResetPasswordFormState) then) =
      _$ResetPasswordFormStateCopyWithImpl<$Res, ResetPasswordFormState>;
  @useResult
  $Res call(
      {Code code,
      NewPassword password,
      ConfirmNewPassword confirmPassword,
      bool isValid});
}

/// @nodoc
class _$ResetPasswordFormStateCopyWithImpl<$Res,
        $Val extends ResetPasswordFormState>
    implements $ResetPasswordFormStateCopyWith<$Res> {
  _$ResetPasswordFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Code,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as NewPassword,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmNewPassword,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordFormStateImplCopyWith<$Res>
    implements $ResetPasswordFormStateCopyWith<$Res> {
  factory _$$ResetPasswordFormStateImplCopyWith(
          _$ResetPasswordFormStateImpl value,
          $Res Function(_$ResetPasswordFormStateImpl) then) =
      __$$ResetPasswordFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Code code,
      NewPassword password,
      ConfirmNewPassword confirmPassword,
      bool isValid});
}

/// @nodoc
class __$$ResetPasswordFormStateImplCopyWithImpl<$Res>
    extends _$ResetPasswordFormStateCopyWithImpl<$Res,
        _$ResetPasswordFormStateImpl>
    implements _$$ResetPasswordFormStateImplCopyWith<$Res> {
  __$$ResetPasswordFormStateImplCopyWithImpl(
      _$ResetPasswordFormStateImpl _value,
      $Res Function(_$ResetPasswordFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isValid = null,
  }) {
    return _then(_$ResetPasswordFormStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Code,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as NewPassword,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmNewPassword,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ResetPasswordFormStateImpl implements _ResetPasswordFormState {
  const _$ResetPasswordFormStateImpl(
      {this.code = const Code.pure(),
      this.password = const NewPassword.pure(''),
      this.confirmPassword = const ConfirmNewPassword.pure(''),
      this.isValid = false});

  @override
  @JsonKey()
  final Code code;
  @override
  @JsonKey()
  final NewPassword password;
  @override
  @JsonKey()
  final ConfirmNewPassword confirmPassword;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'ResetPasswordFormState(code: $code, password: $password, confirmPassword: $confirmPassword, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordFormStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, code, password, confirmPassword, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordFormStateImplCopyWith<_$ResetPasswordFormStateImpl>
      get copyWith => __$$ResetPasswordFormStateImplCopyWithImpl<
          _$ResetPasswordFormStateImpl>(this, _$identity);
}

abstract class _ResetPasswordFormState implements ResetPasswordFormState {
  const factory _ResetPasswordFormState(
      {final Code code,
      final NewPassword password,
      final ConfirmNewPassword confirmPassword,
      final bool isValid}) = _$ResetPasswordFormStateImpl;

  @override
  Code get code;
  @override
  NewPassword get password;
  @override
  ConfirmNewPassword get confirmPassword;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$ResetPasswordFormStateImplCopyWith<_$ResetPasswordFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
