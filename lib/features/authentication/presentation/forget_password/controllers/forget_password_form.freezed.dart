// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgetPasswordFormState {
  /// The email field.
  Email get email => throw _privateConstructorUsedError;

  /// Whether the form is valid.
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgetPasswordFormStateCopyWith<ForgetPasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordFormStateCopyWith<$Res> {
  factory $ForgetPasswordFormStateCopyWith(ForgetPasswordFormState value,
          $Res Function(ForgetPasswordFormState) then) =
      _$ForgetPasswordFormStateCopyWithImpl<$Res, ForgetPasswordFormState>;
  @useResult
  $Res call({Email email, bool isValid});
}

/// @nodoc
class _$ForgetPasswordFormStateCopyWithImpl<$Res,
        $Val extends ForgetPasswordFormState>
    implements $ForgetPasswordFormStateCopyWith<$Res> {
  _$ForgetPasswordFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgetPasswordFormStateImplCopyWith<$Res>
    implements $ForgetPasswordFormStateCopyWith<$Res> {
  factory _$$ForgetPasswordFormStateImplCopyWith(
          _$ForgetPasswordFormStateImpl value,
          $Res Function(_$ForgetPasswordFormStateImpl) then) =
      __$$ForgetPasswordFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Email email, bool isValid});
}

/// @nodoc
class __$$ForgetPasswordFormStateImplCopyWithImpl<$Res>
    extends _$ForgetPasswordFormStateCopyWithImpl<$Res,
        _$ForgetPasswordFormStateImpl>
    implements _$$ForgetPasswordFormStateImplCopyWith<$Res> {
  __$$ForgetPasswordFormStateImplCopyWithImpl(
      _$ForgetPasswordFormStateImpl _value,
      $Res Function(_$ForgetPasswordFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isValid = null,
  }) {
    return _then(_$ForgetPasswordFormStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ForgetPasswordFormStateImpl implements _ForgetPasswordFormState {
  const _$ForgetPasswordFormStateImpl(
      {this.email = const Email.pure(), this.isValid = false});

  /// The email field.
  @override
  @JsonKey()
  final Email email;

  /// Whether the form is valid.
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'ForgetPasswordFormState(email: $email, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordFormStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordFormStateImplCopyWith<_$ForgetPasswordFormStateImpl>
      get copyWith => __$$ForgetPasswordFormStateImplCopyWithImpl<
          _$ForgetPasswordFormStateImpl>(this, _$identity);
}

abstract class _ForgetPasswordFormState implements ForgetPasswordFormState {
  const factory _ForgetPasswordFormState(
      {final Email email, final bool isValid}) = _$ForgetPasswordFormStateImpl;

  @override

  /// The email field.
  Email get email;
  @override

  /// Whether the form is valid.
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$ForgetPasswordFormStateImplCopyWith<_$ForgetPasswordFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
