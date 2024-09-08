// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_search_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetSearchHistoryResponse _$GetSearchHistoryResponseFromJson(
    Map<String, dynamic> json) {
  return _GetSearchHistoryResponse.fromJson(json);
}

/// @nodoc
mixin _$GetSearchHistoryResponse {
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int get totalPage =>
      throw _privateConstructorUsedError; // TODO replace search model
  @JsonKey(name: 'data')
  List<dynamic> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetSearchHistoryResponseCopyWith<GetSearchHistoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSearchHistoryResponseCopyWith<$Res> {
  factory $GetSearchHistoryResponseCopyWith(GetSearchHistoryResponse value,
          $Res Function(GetSearchHistoryResponse) then) =
      _$GetSearchHistoryResponseCopyWithImpl<$Res, GetSearchHistoryResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'last_page') int totalPage,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class _$GetSearchHistoryResponseCopyWithImpl<$Res,
        $Val extends GetSearchHistoryResponse>
    implements $GetSearchHistoryResponseCopyWith<$Res> {
  _$GetSearchHistoryResponseCopyWithImpl(this._value, this._then);

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
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSearchHistoryResponseImplCopyWith<$Res>
    implements $GetSearchHistoryResponseCopyWith<$Res> {
  factory _$$GetSearchHistoryResponseImplCopyWith(
          _$GetSearchHistoryResponseImpl value,
          $Res Function(_$GetSearchHistoryResponseImpl) then) =
      __$$GetSearchHistoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_page') int currentPage,
      @JsonKey(name: 'last_page') int totalPage,
      @JsonKey(name: 'data') List<dynamic> data});
}

/// @nodoc
class __$$GetSearchHistoryResponseImplCopyWithImpl<$Res>
    extends _$GetSearchHistoryResponseCopyWithImpl<$Res,
        _$GetSearchHistoryResponseImpl>
    implements _$$GetSearchHistoryResponseImplCopyWith<$Res> {
  __$$GetSearchHistoryResponseImplCopyWithImpl(
      _$GetSearchHistoryResponseImpl _value,
      $Res Function(_$GetSearchHistoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? totalPage = null,
    Object? data = null,
  }) {
    return _then(_$GetSearchHistoryResponseImpl(
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
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetSearchHistoryResponseImpl implements _GetSearchHistoryResponse {
  const _$GetSearchHistoryResponseImpl(
      {@JsonKey(name: 'current_page') required this.currentPage,
      @JsonKey(name: 'last_page') required this.totalPage,
      @JsonKey(name: 'data') required final List<dynamic> data})
      : _data = data;

  factory _$GetSearchHistoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetSearchHistoryResponseImplFromJson(json);

  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  @override
  @JsonKey(name: 'last_page')
  final int totalPage;
// TODO replace search model
  final List<dynamic> _data;
// TODO replace search model
  @override
  @JsonKey(name: 'data')
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetSearchHistoryResponse(currentPage: $currentPage, totalPage: $totalPage, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSearchHistoryResponseImpl &&
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
  _$$GetSearchHistoryResponseImplCopyWith<_$GetSearchHistoryResponseImpl>
      get copyWith => __$$GetSearchHistoryResponseImplCopyWithImpl<
          _$GetSearchHistoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetSearchHistoryResponseImplToJson(
      this,
    );
  }
}

abstract class _GetSearchHistoryResponse implements GetSearchHistoryResponse {
  const factory _GetSearchHistoryResponse(
          {@JsonKey(name: 'current_page') required final int currentPage,
          @JsonKey(name: 'last_page') required final int totalPage,
          @JsonKey(name: 'data') required final List<dynamic> data}) =
      _$GetSearchHistoryResponseImpl;

  factory _GetSearchHistoryResponse.fromJson(Map<String, dynamic> json) =
      _$GetSearchHistoryResponseImpl.fromJson;

  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  @JsonKey(name: 'last_page')
  int get totalPage;
  @override // TODO replace search model
  @JsonKey(name: 'data')
  List<dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$GetSearchHistoryResponseImplCopyWith<_$GetSearchHistoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
