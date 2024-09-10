// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_history_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatHistoryEntry {
  String get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatHistoryEntryCopyWith<ChatHistoryEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatHistoryEntryCopyWith<$Res> {
  factory $ChatHistoryEntryCopyWith(
          ChatHistoryEntry value, $Res Function(ChatHistoryEntry) then) =
      _$ChatHistoryEntryCopyWithImpl<$Res, ChatHistoryEntry>;
  @useResult
  $Res call({String id, String message, DateTime timestamp});
}

/// @nodoc
class _$ChatHistoryEntryCopyWithImpl<$Res, $Val extends ChatHistoryEntry>
    implements $ChatHistoryEntryCopyWith<$Res> {
  _$ChatHistoryEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? timestamp = null,
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
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatHistoryEntryImplCopyWith<$Res>
    implements $ChatHistoryEntryCopyWith<$Res> {
  factory _$$ChatHistoryEntryImplCopyWith(_$ChatHistoryEntryImpl value,
          $Res Function(_$ChatHistoryEntryImpl) then) =
      __$$ChatHistoryEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String message, DateTime timestamp});
}

/// @nodoc
class __$$ChatHistoryEntryImplCopyWithImpl<$Res>
    extends _$ChatHistoryEntryCopyWithImpl<$Res, _$ChatHistoryEntryImpl>
    implements _$$ChatHistoryEntryImplCopyWith<$Res> {
  __$$ChatHistoryEntryImplCopyWithImpl(_$ChatHistoryEntryImpl _value,
      $Res Function(_$ChatHistoryEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? timestamp = null,
  }) {
    return _then(_$ChatHistoryEntryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChatHistoryEntryImpl implements _ChatHistoryEntry {
  const _$ChatHistoryEntryImpl(
      {required this.id, required this.message, required this.timestamp});

  @override
  final String id;
  @override
  final String message;
  @override
  final DateTime timestamp;

  @override
  String toString() {
    return 'ChatHistoryEntry(id: $id, message: $message, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatHistoryEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, message, timestamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatHistoryEntryImplCopyWith<_$ChatHistoryEntryImpl> get copyWith =>
      __$$ChatHistoryEntryImplCopyWithImpl<_$ChatHistoryEntryImpl>(
          this, _$identity);
}

abstract class _ChatHistoryEntry implements ChatHistoryEntry {
  const factory _ChatHistoryEntry(
      {required final String id,
      required final String message,
      required final DateTime timestamp}) = _$ChatHistoryEntryImpl;

  @override
  String get id;
  @override
  String get message;
  @override
  DateTime get timestamp;
  @override
  @JsonKey(ignore: true)
  _$$ChatHistoryEntryImplCopyWith<_$ChatHistoryEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
