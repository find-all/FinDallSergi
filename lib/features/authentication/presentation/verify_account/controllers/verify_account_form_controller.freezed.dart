// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_account_form_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerifyAccountFormState {
  Code get code => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyAccountFormStateCopyWith<VerifyAccountFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyAccountFormStateCopyWith<$Res> {
  factory $VerifyAccountFormStateCopyWith(VerifyAccountFormState value,
          $Res Function(VerifyAccountFormState) then) =
      _$VerifyAccountFormStateCopyWithImpl<$Res, VerifyAccountFormState>;
  @useResult
  $Res call({Code code, String token, bool isValid});
}

/// @nodoc
class _$VerifyAccountFormStateCopyWithImpl<$Res,
        $Val extends VerifyAccountFormState>
    implements $VerifyAccountFormStateCopyWith<$Res> {
  _$VerifyAccountFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? token = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Code,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyAccountFormStateImplCopyWith<$Res>
    implements $VerifyAccountFormStateCopyWith<$Res> {
  factory _$$VerifyAccountFormStateImplCopyWith(
          _$VerifyAccountFormStateImpl value,
          $Res Function(_$VerifyAccountFormStateImpl) then) =
      __$$VerifyAccountFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Code code, String token, bool isValid});
}

/// @nodoc
class __$$VerifyAccountFormStateImplCopyWithImpl<$Res>
    extends _$VerifyAccountFormStateCopyWithImpl<$Res,
        _$VerifyAccountFormStateImpl>
    implements _$$VerifyAccountFormStateImplCopyWith<$Res> {
  __$$VerifyAccountFormStateImplCopyWithImpl(
      _$VerifyAccountFormStateImpl _value,
      $Res Function(_$VerifyAccountFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? token = null,
    Object? isValid = null,
  }) {
    return _then(_$VerifyAccountFormStateImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as Code,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$VerifyAccountFormStateImpl implements _VerifyAccountFormState {
  const _$VerifyAccountFormStateImpl(
      {this.code = const Code.pure(),
      required this.token,
      this.isValid = false});

  @override
  @JsonKey()
  final Code code;
  @override
  final String token;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'VerifyAccountFormState(code: $code, token: $token, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyAccountFormStateImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, token, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyAccountFormStateImplCopyWith<_$VerifyAccountFormStateImpl>
      get copyWith => __$$VerifyAccountFormStateImplCopyWithImpl<
          _$VerifyAccountFormStateImpl>(this, _$identity);
}

abstract class _VerifyAccountFormState implements VerifyAccountFormState {
  const factory _VerifyAccountFormState(
      {final Code code,
      required final String token,
      final bool isValid}) = _$VerifyAccountFormStateImpl;

  @override
  Code get code;
  @override
  String get token;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$VerifyAccountFormStateImplCopyWith<_$VerifyAccountFormStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
