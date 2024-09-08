// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_theme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppThemeModel _$AppThemeModelFromJson(Map<String, dynamic> json) {
  return _AppThemeModel.fromJson(json);
}

/// @nodoc
mixin _$AppThemeModel {
  bool get isDarkMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppThemeModelCopyWith<AppThemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeModelCopyWith<$Res> {
  factory $AppThemeModelCopyWith(
          AppThemeModel value, $Res Function(AppThemeModel) then) =
      _$AppThemeModelCopyWithImpl<$Res, AppThemeModel>;
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class _$AppThemeModelCopyWithImpl<$Res, $Val extends AppThemeModel>
    implements $AppThemeModelCopyWith<$Res> {
  _$AppThemeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_value.copyWith(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppThemeModelImplCopyWith<$Res>
    implements $AppThemeModelCopyWith<$Res> {
  factory _$$AppThemeModelImplCopyWith(
          _$AppThemeModelImpl value, $Res Function(_$AppThemeModelImpl) then) =
      __$$AppThemeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDarkMode});
}

/// @nodoc
class __$$AppThemeModelImplCopyWithImpl<$Res>
    extends _$AppThemeModelCopyWithImpl<$Res, _$AppThemeModelImpl>
    implements _$$AppThemeModelImplCopyWith<$Res> {
  __$$AppThemeModelImplCopyWithImpl(
      _$AppThemeModelImpl _value, $Res Function(_$AppThemeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDarkMode = null,
  }) {
    return _then(_$AppThemeModelImpl(
      isDarkMode: null == isDarkMode
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppThemeModelImpl implements _AppThemeModel {
  const _$AppThemeModelImpl({this.isDarkMode = false});

  factory _$AppThemeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppThemeModelImplFromJson(json);

  @override
  @JsonKey()
  final bool isDarkMode;

  @override
  String toString() {
    return 'AppThemeModel(isDarkMode: $isDarkMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeModelImpl &&
            (identical(other.isDarkMode, isDarkMode) ||
                other.isDarkMode == isDarkMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isDarkMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppThemeModelImplCopyWith<_$AppThemeModelImpl> get copyWith =>
      __$$AppThemeModelImplCopyWithImpl<_$AppThemeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppThemeModelImplToJson(
      this,
    );
  }
}

abstract class _AppThemeModel implements AppThemeModel {
  const factory _AppThemeModel({final bool isDarkMode}) = _$AppThemeModelImpl;

  factory _AppThemeModel.fromJson(Map<String, dynamic> json) =
      _$AppThemeModelImpl.fromJson;

  @override
  bool get isDarkMode;
  @override
  @JsonKey(ignore: true)
  _$$AppThemeModelImplCopyWith<_$AppThemeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
