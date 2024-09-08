// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_history_entry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatHistoryEntryModel _$ChatHistoryEntryModelFromJson(
    Map<String, dynamic> json) {
  return _ChatHistoryEntryModel.fromJson(json);
}

/// @nodoc
mixin _$ChatHistoryEntryModel {
  String get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatHistoryEntryModelCopyWith<ChatHistoryEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatHistoryEntryModelCopyWith<$Res> {
  factory $ChatHistoryEntryModelCopyWith(ChatHistoryEntryModel value,
          $Res Function(ChatHistoryEntryModel) then) =
      _$ChatHistoryEntryModelCopyWithImpl<$Res, ChatHistoryEntryModel>;
  @useResult
  $Res call({String id, String message, DateTime updatedAt});
}

/// @nodoc
class _$ChatHistoryEntryModelCopyWithImpl<$Res,
        $Val extends ChatHistoryEntryModel>
    implements $ChatHistoryEntryModelCopyWith<$Res> {
  _$ChatHistoryEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatHistoryEntryModelImplCopyWith<$Res>
    implements $ChatHistoryEntryModelCopyWith<$Res> {
  factory _$$ChatHistoryEntryModelImplCopyWith(
          _$ChatHistoryEntryModelImpl value,
          $Res Function(_$ChatHistoryEntryModelImpl) then) =
      __$$ChatHistoryEntryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String message, DateTime updatedAt});
}

/// @nodoc
class __$$ChatHistoryEntryModelImplCopyWithImpl<$Res>
    extends _$ChatHistoryEntryModelCopyWithImpl<$Res,
        _$ChatHistoryEntryModelImpl>
    implements _$$ChatHistoryEntryModelImplCopyWith<$Res> {
  __$$ChatHistoryEntryModelImplCopyWithImpl(_$ChatHistoryEntryModelImpl _value,
      $Res Function(_$ChatHistoryEntryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ChatHistoryEntryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatHistoryEntryModelImpl implements _ChatHistoryEntryModel {
  const _$ChatHistoryEntryModelImpl(
      {required this.id, required this.message, required this.updatedAt});

  factory _$ChatHistoryEntryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatHistoryEntryModelImplFromJson(json);

  @override
  final String id;
  @override
  final String message;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ChatHistoryEntryModel(id: $id, message: $message, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatHistoryEntryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, message, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatHistoryEntryModelImplCopyWith<_$ChatHistoryEntryModelImpl>
      get copyWith => __$$ChatHistoryEntryModelImplCopyWithImpl<
          _$ChatHistoryEntryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatHistoryEntryModelImplToJson(
      this,
    );
  }
}

abstract class _ChatHistoryEntryModel implements ChatHistoryEntryModel {
  const factory _ChatHistoryEntryModel(
      {required final String id,
      required final String message,
      required final DateTime updatedAt}) = _$ChatHistoryEntryModelImpl;

  factory _ChatHistoryEntryModel.fromJson(Map<String, dynamic> json) =
      _$ChatHistoryEntryModelImpl.fromJson;

  @override
  String get id;
  @override
  String get message;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ChatHistoryEntryModelImplCopyWith<_$ChatHistoryEntryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
