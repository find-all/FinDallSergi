// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_form_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangePasswordFormState {
  Password get currentPassword => throw _privateConstructorUsedError;
  NewPassword get newPassword => throw _privateConstructorUsedError;
  ConfirmNewPassword get confirmNewPassword =>
      throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordFormStateCopyWith<ChangePasswordFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordFormStateCopyWith<$Res> {
  factory $ChangePasswordFormStateCopyWith(ChangePasswordFormState value,
          $Res Function(ChangePasswordFormState) then) =
      _$ChangePasswordFormStateCopyWithImpl<$Res, ChangePasswordFormState>;
  @useResult
  $Res call(
      {Password currentPassword,
      NewPassword newPassword,
      ConfirmNewPassword confirmNewPassword,
      bool isValid});
}

/// @nodoc
class _$ChangePasswordFormStateCopyWithImpl<$Res,
        $Val extends ChangePasswordFormState>
    implements $ChangePasswordFormStateCopyWith<$Res> {
  _$ChangePasswordFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
    Object? confirmNewPassword = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as NewPassword,
      confirmNewPassword: null == confirmNewPassword
          ? _value.confirmNewPassword
          : confirmNewPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmNewPassword,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordFormStateImplCopyWith<$Res>
    implements $ChangePasswordFormStateCopyWith<$Res> {
  factory _$$ChangePasswordFormStateImplCopyWith(
          _$ChangePasswordFormStateImpl value,
          $Res Function(_$ChangePasswordFormStateImpl) then) =
      __$$ChangePasswordFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Password currentPassword,
      NewPassword newPassword,
      ConfirmNewPassword confirmNewPassword,
      bool isValid});
}

/// @nodoc
class __$$ChangePasswordFormStateImplCopyWithImpl<$Res>
    extends _$ChangePasswordFormStateCopyWithImpl<$Res,
        _$ChangePasswordFormStateImpl>
    implements _$$ChangePasswordFormStateImplCopyWith<$Res> {
  __$$ChangePasswordFormStateImplCopyWithImpl(
      _$ChangePasswordFormStateImpl _value,
      $Res Function(_$ChangePasswordFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPassword = null,
    Object? newPassword = null,
    Object? confirmNewPassword = null,
    Object? isValid = null,
  }) {
    return _then(_$ChangePasswordFormStateImpl(
      currentPassword: null == currentPassword
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as NewPassword,
      confirmNewPassword: null == confirmNewPassword
          ? _value.confirmNewPassword
          : confirmNewPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmNewPassword,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangePasswordFormStateImpl implements _ChangePasswordFormState {
  const _$ChangePasswordFormStateImpl(
      {required this.currentPassword,
      required this.newPassword,
      required this.confirmNewPassword,
      this.isValid = false});

  @override
  final Password currentPassword;
  @override
  final NewPassword newPassword;
  @override
  final ConfirmNewPassword confirmNewPassword;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'ChangePasswordFormState(currentPassword: $currentPassword, newPassword: $newPassword, confirmNewPassword: $confirmNewPassword, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordFormStateImpl &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmNewPassword, confirmNewPassword) ||
                other.confirmNewPassword == confirmNewPassword) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentPassword, newPassword, confirmNewPassword, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordFormStateImplCopyWith<_$ChangePasswordFormStateImpl>
      get copyWith => __$$ChangePasswordFormStateImplCopyWithImpl<
          _$ChangePasswordFormStateImpl>(this, _$identity);
}

abstract class _ChangePasswordFormState implements ChangePasswordFormState {
  const factory _ChangePasswordFormState(
      {required final Password currentPassword,
      required final NewPassword newPassword,
      required final ConfirmNewPassword confirmNewPassword,
      final bool isValid}) = _$ChangePasswordFormStateImpl;

  @override
  Password get currentPassword;
  @override
  NewPassword get newPassword;
  @override
  ConfirmNewPassword get confirmNewPassword;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$ChangePasswordFormStateImplCopyWith<_$ChangePasswordFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
