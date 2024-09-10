// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_favorites_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetFavoritesResponse _$GetFavoritesResponseFromJson(Map<String, dynamic> json) {
  return _GetFavoritesResponse.fromJson(json);
}

/// @nodoc
mixin _$GetFavoritesResponse {
  List<FavoriteModel> get favorites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetFavoritesResponseCopyWith<GetFavoritesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFavoritesResponseCopyWith<$Res> {
  factory $GetFavoritesResponseCopyWith(GetFavoritesResponse value,
          $Res Function(GetFavoritesResponse) then) =
      _$GetFavoritesResponseCopyWithImpl<$Res, GetFavoritesResponse>;
  @useResult
  $Res call({List<FavoriteModel> favorites});
}

/// @nodoc
class _$GetFavoritesResponseCopyWithImpl<$Res,
        $Val extends GetFavoritesResponse>
    implements $GetFavoritesResponseCopyWith<$Res> {
  _$GetFavoritesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
  }) {
    return _then(_value.copyWith(
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<FavoriteModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetFavoritesResponseImplCopyWith<$Res>
    implements $GetFavoritesResponseCopyWith<$Res> {
  factory _$$GetFavoritesResponseImplCopyWith(_$GetFavoritesResponseImpl value,
          $Res Function(_$GetFavoritesResponseImpl) then) =
      __$$GetFavoritesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FavoriteModel> favorites});
}

/// @nodoc
class __$$GetFavoritesResponseImplCopyWithImpl<$Res>
    extends _$GetFavoritesResponseCopyWithImpl<$Res, _$GetFavoritesResponseImpl>
    implements _$$GetFavoritesResponseImplCopyWith<$Res> {
  __$$GetFavoritesResponseImplCopyWithImpl(_$GetFavoritesResponseImpl _value,
      $Res Function(_$GetFavoritesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
  }) {
    return _then(_$GetFavoritesResponseImpl(
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<FavoriteModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetFavoritesResponseImpl implements _GetFavoritesResponse {
  const _$GetFavoritesResponseImpl(
      {required final List<FavoriteModel> favorites})
      : _favorites = favorites;

  factory _$GetFavoritesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetFavoritesResponseImplFromJson(json);

  final List<FavoriteModel> _favorites;
  @override
  List<FavoriteModel> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  String toString() {
    return 'GetFavoritesResponse(favorites: $favorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavoritesResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_favorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFavoritesResponseImplCopyWith<_$GetFavoritesResponseImpl>
      get copyWith =>
          __$$GetFavoritesResponseImplCopyWithImpl<_$GetFavoritesResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetFavoritesResponseImplToJson(
      this,
    );
  }
}

abstract class _GetFavoritesResponse implements GetFavoritesResponse {
  const factory _GetFavoritesResponse(
          {required final List<FavoriteModel> favorites}) =
      _$GetFavoritesResponseImpl;

  factory _GetFavoritesResponse.fromJson(Map<String, dynamic> json) =
      _$GetFavoritesResponseImpl.fromJson;

  @override
  List<FavoriteModel> get favorites;
  @override
  @JsonKey(ignore: true)
  _$$GetFavoritesResponseImplCopyWith<_$GetFavoritesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
