// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_user_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyUserRequest _$VerifyUserRequestFromJson(Map<String, dynamic> json) {
  return _VerifyUserRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyUserRequest {
  @JsonKey(includeToJson: false)
  String get verifyUserToken => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: '_scenario')
  String get scenario => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyUserRequestCopyWith<VerifyUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyUserRequestCopyWith<$Res> {
  factory $VerifyUserRequestCopyWith(
          VerifyUserRequest value, $Res Function(VerifyUserRequest) then) =
      _$VerifyUserRequestCopyWithImpl<$Res, VerifyUserRequest>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String verifyUserToken,
      String code,
      @JsonKey(name: '_scenario') String scenario});
}

/// @nodoc
class _$VerifyUserRequestCopyWithImpl<$Res, $Val extends VerifyUserRequest>
    implements $VerifyUserRequestCopyWith<$Res> {
  _$VerifyUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifyUserToken = null,
    Object? code = null,
    Object? scenario = null,
  }) {
    return _then(_value.copyWith(
      verifyUserToken: null == verifyUserToken
          ? _value.verifyUserToken
          : verifyUserToken // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      scenario: null == scenario
          ? _value.scenario
          : scenario // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyUserRequestImplCopyWith<$Res>
    implements $VerifyUserRequestCopyWith<$Res> {
  factory _$$VerifyUserRequestImplCopyWith(_$VerifyUserRequestImpl value,
          $Res Function(_$VerifyUserRequestImpl) then) =
      __$$VerifyUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) String verifyUserToken,
      String code,
      @JsonKey(name: '_scenario') String scenario});
}

/// @nodoc
class __$$VerifyUserRequestImplCopyWithImpl<$Res>
    extends _$VerifyUserRequestCopyWithImpl<$Res, _$VerifyUserRequestImpl>
    implements _$$VerifyUserRequestImplCopyWith<$Res> {
  __$$VerifyUserRequestImplCopyWithImpl(_$VerifyUserRequestImpl _value,
      $Res Function(_$VerifyUserRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifyUserToken = null,
    Object? code = null,
    Object? scenario = null,
  }) {
    return _then(_$VerifyUserRequestImpl(
      verifyUserToken: null == verifyUserToken
          ? _value.verifyUserToken
          : verifyUserToken // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      scenario: null == scenario
          ? _value.scenario
          : scenario // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyUserRequestImpl implements _VerifyUserRequest {
  const _$VerifyUserRequestImpl(
      {@JsonKey(includeToJson: false) required this.verifyUserToken,
      required this.code,
      @JsonKey(name: '_scenario') this.scenario = 'enable'});

  factory _$VerifyUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyUserRequestImplFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final String verifyUserToken;
  @override
  final String code;
  @override
  @JsonKey(name: '_scenario')
  final String scenario;

  @override
  String toString() {
    return 'VerifyUserRequest(verifyUserToken: $verifyUserToken, code: $code, scenario: $scenario)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyUserRequestImpl &&
            (identical(other.verifyUserToken, verifyUserToken) ||
                other.verifyUserToken == verifyUserToken) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.scenario, scenario) ||
                other.scenario == scenario));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, verifyUserToken, code, scenario);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyUserRequestImplCopyWith<_$VerifyUserRequestImpl> get copyWith =>
      __$$VerifyUserRequestImplCopyWithImpl<_$VerifyUserRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyUserRequestImplToJson(
      this,
    );
  }
}

abstract class _VerifyUserRequest implements VerifyUserRequest {
  const factory _VerifyUserRequest(
          {@JsonKey(includeToJson: false) required final String verifyUserToken,
          required final String code,
          @JsonKey(name: '_scenario') final String scenario}) =
      _$VerifyUserRequestImpl;

  factory _VerifyUserRequest.fromJson(Map<String, dynamic> json) =
      _$VerifyUserRequestImpl.fromJson;

  @override
  @JsonKey(includeToJson: false)
  String get verifyUserToken;
  @override
  String get code;
  @override
  @JsonKey(name: '_scenario')
  String get scenario;
  @override
  @JsonKey(ignore: true)
  _$$VerifyUserRequestImplCopyWith<_$VerifyUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
