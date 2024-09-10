// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_language_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppLanguageModel _$AppLanguageModelFromJson(Map<String, dynamic> json) {
  return _AppLanguageModel.fromJson(json);
}

/// @nodoc
mixin _$AppLanguageModel {
  int get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppLanguageModelCopyWith<AppLanguageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLanguageModelCopyWith<$Res> {
  factory $AppLanguageModelCopyWith(
          AppLanguageModel value, $Res Function(AppLanguageModel) then) =
      _$AppLanguageModelCopyWithImpl<$Res, AppLanguageModel>;
  @useResult
  $Res call({int language});
}

/// @nodoc
class _$AppLanguageModelCopyWithImpl<$Res, $Val extends AppLanguageModel>
    implements $AppLanguageModelCopyWith<$Res> {
  _$AppLanguageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppLanguageModelImplCopyWith<$Res>
    implements $AppLanguageModelCopyWith<$Res> {
  factory _$$AppLanguageModelImplCopyWith(_$AppLanguageModelImpl value,
          $Res Function(_$AppLanguageModelImpl) then) =
      __$$AppLanguageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int language});
}

/// @nodoc
class __$$AppLanguageModelImplCopyWithImpl<$Res>
    extends _$AppLanguageModelCopyWithImpl<$Res, _$AppLanguageModelImpl>
    implements _$$AppLanguageModelImplCopyWith<$Res> {
  __$$AppLanguageModelImplCopyWithImpl(_$AppLanguageModelImpl _value,
      $Res Function(_$AppLanguageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_$AppLanguageModelImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppLanguageModelImpl implements _AppLanguageModel {
  const _$AppLanguageModelImpl({required this.language});

  factory _$AppLanguageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppLanguageModelImplFromJson(json);

  @override
  final int language;

  @override
  String toString() {
    return 'AppLanguageModel(language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLanguageModelImpl &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLanguageModelImplCopyWith<_$AppLanguageModelImpl> get copyWith =>
      __$$AppLanguageModelImplCopyWithImpl<_$AppLanguageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppLanguageModelImplToJson(
      this,
    );
  }
}

abstract class _AppLanguageModel implements AppLanguageModel {
  const factory _AppLanguageModel({required final int language}) =
      _$AppLanguageModelImpl;

  factory _AppLanguageModel.fromJson(Map<String, dynamic> json) =
      _$AppLanguageModelImpl.fromJson;

  @override
  int get language;
  @override
  @JsonKey(ignore: true)
  _$$AppLanguageModelImplCopyWith<_$AppLanguageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
