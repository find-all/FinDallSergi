// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_name_form_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChangeNameFormState {
  NewName get name => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeNameFormStateCopyWith<ChangeNameFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeNameFormStateCopyWith<$Res> {
  factory $ChangeNameFormStateCopyWith(
          ChangeNameFormState value, $Res Function(ChangeNameFormState) then) =
      _$ChangeNameFormStateCopyWithImpl<$Res, ChangeNameFormState>;
  @useResult
  $Res call({NewName name, bool isValid});
}

/// @nodoc
class _$ChangeNameFormStateCopyWithImpl<$Res, $Val extends ChangeNameFormState>
    implements $ChangeNameFormStateCopyWith<$Res> {
  _$ChangeNameFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NewName,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeNameFormStateImplCopyWith<$Res>
    implements $ChangeNameFormStateCopyWith<$Res> {
  factory _$$ChangeNameFormStateImplCopyWith(_$ChangeNameFormStateImpl value,
          $Res Function(_$ChangeNameFormStateImpl) then) =
      __$$ChangeNameFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewName name, bool isValid});
}

/// @nodoc
class __$$ChangeNameFormStateImplCopyWithImpl<$Res>
    extends _$ChangeNameFormStateCopyWithImpl<$Res, _$ChangeNameFormStateImpl>
    implements _$$ChangeNameFormStateImplCopyWith<$Res> {
  __$$ChangeNameFormStateImplCopyWithImpl(_$ChangeNameFormStateImpl _value,
      $Res Function(_$ChangeNameFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isValid = null,
  }) {
    return _then(_$ChangeNameFormStateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NewName,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeNameFormStateImpl implements _ChangeNameFormState {
  const _$ChangeNameFormStateImpl({required this.name, this.isValid = false});

  @override
  final NewName name;
  @override
  @JsonKey()
  final bool isValid;

  @override
  String toString() {
    return 'ChangeNameFormState(name: $name, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNameFormStateImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, isValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNameFormStateImplCopyWith<_$ChangeNameFormStateImpl> get copyWith =>
      __$$ChangeNameFormStateImplCopyWithImpl<_$ChangeNameFormStateImpl>(
          this, _$identity);
}

abstract class _ChangeNameFormState implements ChangeNameFormState {
  const factory _ChangeNameFormState(
      {required final NewName name,
      final bool isValid}) = _$ChangeNameFormStateImpl;

  @override
  NewName get name;
  @override
  bool get isValid;
  @override
  @JsonKey(ignore: true)
  _$$ChangeNameFormStateImplCopyWith<_$ChangeNameFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
