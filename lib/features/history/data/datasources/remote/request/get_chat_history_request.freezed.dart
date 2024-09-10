// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_chat_history_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetChatHistoryRequest _$GetChatHistoryRequestFromJson(
    Map<String, dynamic> json) {
  return _GetChatHistoryRequest.fromJson(json);
}

/// @nodoc
mixin _$GetChatHistoryRequest {
  int get userId => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetChatHistoryRequestCopyWith<GetChatHistoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetChatHistoryRequestCopyWith<$Res> {
  factory $GetChatHistoryRequestCopyWith(GetChatHistoryRequest value,
          $Res Function(GetChatHistoryRequest) then) =
      _$GetChatHistoryRequestCopyWithImpl<$Res, GetChatHistoryRequest>;
  @useResult
  $Res call({int userId, int page, int pageSize});
}

/// @nodoc
class _$GetChatHistoryRequestCopyWithImpl<$Res,
        $Val extends GetChatHistoryRequest>
    implements $GetChatHistoryRequestCopyWith<$Res> {
  _$GetChatHistoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetChatHistoryRequestImplCopyWith<$Res>
    implements $GetChatHistoryRequestCopyWith<$Res> {
  factory _$$GetChatHistoryRequestImplCopyWith(
          _$GetChatHistoryRequestImpl value,
          $Res Function(_$GetChatHistoryRequestImpl) then) =
      __$$GetChatHistoryRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int page, int pageSize});
}

/// @nodoc
class __$$GetChatHistoryRequestImplCopyWithImpl<$Res>
    extends _$GetChatHistoryRequestCopyWithImpl<$Res,
        _$GetChatHistoryRequestImpl>
    implements _$$GetChatHistoryRequestImplCopyWith<$Res> {
  __$$GetChatHistoryRequestImplCopyWithImpl(_$GetChatHistoryRequestImpl _value,
      $Res Function(_$GetChatHistoryRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_$GetChatHistoryRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetChatHistoryRequestImpl implements _GetChatHistoryRequest {
  const _$GetChatHistoryRequestImpl(
      {required this.userId, required this.page, this.pageSize = 25});

  factory _$GetChatHistoryRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetChatHistoryRequestImplFromJson(json);

  @override
  final int userId;
  @override
  final int page;
  @override
  @JsonKey()
  final int pageSize;

  @override
  String toString() {
    return 'GetChatHistoryRequest(userId: $userId, page: $page, pageSize: $pageSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatHistoryRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, page, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChatHistoryRequestImplCopyWith<_$GetChatHistoryRequestImpl>
      get copyWith => __$$GetChatHistoryRequestImplCopyWithImpl<
          _$GetChatHistoryRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetChatHistoryRequestImplToJson(
      this,
    );
  }
}

abstract class _GetChatHistoryRequest implements GetChatHistoryRequest {
  const factory _GetChatHistoryRequest(
      {required final int userId,
      required final int page,
      final int pageSize}) = _$GetChatHistoryRequestImpl;

  factory _GetChatHistoryRequest.fromJson(Map<String, dynamic> json) =
      _$GetChatHistoryRequestImpl.fromJson;

  @override
  int get userId;
  @override
  int get page;
  @override
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$$GetChatHistoryRequestImplCopyWith<_$GetChatHistoryRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
