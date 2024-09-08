// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_chat_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetChatHistoryResponse _$GetChatHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _GetChatHistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$GetChatHistoryResponse {
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int get totalPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<ChatHistoryEntryModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetChatHistoryResponseCopyWith<GetChatHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetChatHistoryResponseCopyWith<$Res> {
  factory $GetChatHistoryResponseCopyWith(GetChatHistoryResponse value,
          $Res Function(GetChatHistoryResponse) then) =
      _$GetChatHistoryResponseCopyWithImpl<$Res, GetChatHistoryResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'last_page') int totalPage,
      @JsonKey(name: 'data') List<ChatHistoryEntryModel> data});
}

/// @nodoc
class _$GetChatHistoryResponseCopyWithImpl<$Res,
        $Val extends GetChatHistoryResponse>
    implements $GetChatHistoryResponseCopyWith<$Res> {
  _$GetChatHistoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? totalPage = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChatHistoryEntryModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetChatHistoryResponseImplCopyWith<$Res>
    implements $GetChatHistoryResponseCopyWith<$Res> {
  factory _$$GetChatHistoryResponseImplCopyWith(
          _$GetChatHistoryResponseImpl value,
          $Res Function(_$GetChatHistoryResponseImpl) then) =
      __$$GetChatHistoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'last_page') int totalPage,
      @JsonKey(name: 'data') List<ChatHistoryEntryModel> data});
}

/// @nodoc
class __$$GetChatHistoryResponseImplCopyWithImpl<$Res>
    extends _$GetChatHistoryResponseCopyWithImpl<$Res,
        _$GetChatHistoryResponseImpl>
    implements _$$GetChatHistoryResponseImplCopyWith<$Res> {
  __$$GetChatHistoryResponseImplCopyWithImpl(
      _$GetChatHistoryResponseImpl _value,
      $Res Function(_$GetChatHistoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? totalPage = null,
    Object? data = null,
  }) {
    return _then(_$GetChatHistoryResponseImpl(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ChatHistoryEntryModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetChatHistoryResponseImpl implements _GetChatHistoryResponse {
  const _$GetChatHistoryResponseImpl(
      {@JsonKey(name: 'current_page') required this.currentPage,
      @JsonKey(name: 'last_page') required this.totalPage,
      @JsonKey(name: 'data') required final List<ChatHistoryEntryModel> data})
      : _data = data;

  factory _$GetChatHistoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetChatHistoryResponseImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  @override
  @JsonKey(name: 'last_page')
  final int totalPage;
  final List<ChatHistoryEntryModel> _data;
  @override
  @JsonKey(name: 'data')
  List<ChatHistoryEntryModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetChatHistoryResponse(currentPage: $currentPage, totalPage: $totalPage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatHistoryResponseImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentPage, totalPage,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChatHistoryResponseImplCopyWith<_$GetChatHistoryResponseImpl>
      get copyWith => __$$GetChatHistoryResponseImplCopyWithImpl<
          _$GetChatHistoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetChatHistoryResponseImplToJson(
      this,
    );
  }
}

abstract class _GetChatHistoryResponse implements GetChatHistoryResponse {
  const factory _GetChatHistoryResponse(
          {@JsonKey(name: 'current_page') required final int currentPage,
          @JsonKey(name: 'last_page') required final int totalPage,
          @JsonKey(name: 'data')
          required final List<ChatHistoryEntryModel> data}) =
      _$GetChatHistoryResponseImpl;

  factory _GetChatHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$GetChatHistoryResponseImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  @JsonKey(name: 'last_page')
  int get totalPage;
  @override
  @JsonKey(name: 'data')
  List<ChatHistoryEntryModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$GetChatHistoryResponseImplCopyWith<_$GetChatHistoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
