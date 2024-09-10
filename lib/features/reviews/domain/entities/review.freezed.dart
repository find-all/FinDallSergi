// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Review {
  String get reviewId => throw _privateConstructorUsedError;
  double get reviewRate => throw _privateConstructorUsedError;
  String get reviewComment => throw _privateConstructorUsedError;
  DateTime get reviewDate => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String? get userImageUrl => throw _privateConstructorUsedError;

  /// The id of the business that the review is for
  String get id => throw _privateConstructorUsedError;

  /// The name of the business that the review is for
  String get name => throw _privateConstructorUsedError;

  /// The description of the business that the review is for
  String get description => throw _privateConstructorUsedError;

  /// The type of the business that the review is for
  String get type => throw _privateConstructorUsedError;

  /// The image url of the business that the review is for
  String? get imageUrl => throw _privateConstructorUsedError;

  /// The average rating of the business that the review is for
  double get rate => throw _privateConstructorUsedError;

  /// The total number of reviews for the business that the review is for
  int get totalReviews => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        business,
    TResult? Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        product,
    TResult? Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        service,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        business,
    TResult Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        product,
    TResult Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        service,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReviewBusiness value) business,
    required TResult Function(ReviewProduct value) product,
    required TResult Function(ReviewService value) service,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewBusiness value)? business,
    TResult? Function(ReviewProduct value)? product,
    TResult? Function(ReviewService value)? service,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewBusiness value)? business,
    TResult Function(ReviewProduct value)? product,
    TResult Function(ReviewService value)? service,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {String reviewId,
      double reviewRate,
      String reviewComment,
      DateTime reviewDate,
      String userId,
      String userName,
      String? userImageUrl,
      String id,
      String name,
      String description,
      String type,
      String? imageUrl,
      double rate,
      int totalReviews});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? reviewRate = null,
    Object? reviewComment = null,
    Object? reviewDate = null,
    Object? userId = null,
    Object? userName = null,
    Object? userImageUrl = freezed,
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? imageUrl = freezed,
    Object? rate = null,
    Object? totalReviews = null,
  }) {
    return _then(_value.copyWith(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewRate: null == reviewRate
          ? _value.reviewRate
          : reviewRate // ignore: cast_nullable_to_non_nullable
              as double,
      reviewComment: null == reviewComment
          ? _value.reviewComment
          : reviewComment // ignore: cast_nullable_to_non_nullable
              as String,
      reviewDate: null == reviewDate
          ? _value.reviewDate
          : reviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userImageUrl: freezed == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewBusinessImplCopyWith<$Res>
    implements $ReviewCopyWith<$Res> {
  factory _$$ReviewBusinessImplCopyWith(_$ReviewBusinessImpl value,
          $Res Function(_$ReviewBusinessImpl) then) =
      __$$ReviewBusinessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reviewId,
      double reviewRate,
      String reviewComment,
      DateTime reviewDate,
      String userId,
      String userName,
      String? userImageUrl,
      String id,
      String name,
      String description,
      String type,
      String? imageUrl,
      double rate,
      int totalReviews});
}

/// @nodoc
class __$$ReviewBusinessImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewBusinessImpl>
    implements _$$ReviewBusinessImplCopyWith<$Res> {
  __$$ReviewBusinessImplCopyWithImpl(
      _$ReviewBusinessImpl _value, $Res Function(_$ReviewBusinessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? reviewRate = null,
    Object? reviewComment = null,
    Object? reviewDate = null,
    Object? userId = null,
    Object? userName = null,
    Object? userImageUrl = freezed,
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? imageUrl = freezed,
    Object? rate = null,
    Object? totalReviews = null,
  }) {
    return _then(_$ReviewBusinessImpl(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewRate: null == reviewRate
          ? _value.reviewRate
          : reviewRate // ignore: cast_nullable_to_non_nullable
              as double,
      reviewComment: null == reviewComment
          ? _value.reviewComment
          : reviewComment // ignore: cast_nullable_to_non_nullable
              as String,
      reviewDate: null == reviewDate
          ? _value.reviewDate
          : reviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userImageUrl: freezed == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReviewBusinessImpl implements ReviewBusiness {
  const _$ReviewBusinessImpl(
      {required this.reviewId,
      required this.reviewRate,
      required this.reviewComment,
      required this.reviewDate,
      required this.userId,
      required this.userName,
      this.userImageUrl,
      required this.id,
      required this.name,
      required this.description,
      required this.type,
      this.imageUrl,
      required this.rate,
      required this.totalReviews});

  @override
  final String reviewId;
  @override
  final double reviewRate;
  @override
  final String reviewComment;
  @override
  final DateTime reviewDate;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String? userImageUrl;

  /// The id of the business that the review is for
  @override
  final String id;

  /// The name of the business that the review is for
  @override
  final String name;

  /// The description of the business that the review is for
  @override
  final String description;

  /// The type of the business that the review is for
  @override
  final String type;

  /// The image url of the business that the review is for
  @override
  final String? imageUrl;

  /// The average rating of the business that the review is for
  @override
  final double rate;

  /// The total number of reviews for the business that the review is for
  @override
  final int totalReviews;

  @override
  String toString() {
    return 'Review.business(reviewId: $reviewId, reviewRate: $reviewRate, reviewComment: $reviewComment, reviewDate: $reviewDate, userId: $userId, userName: $userName, userImageUrl: $userImageUrl, id: $id, name: $name, description: $description, type: $type, imageUrl: $imageUrl, rate: $rate, totalReviews: $totalReviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewBusinessImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.reviewRate, reviewRate) ||
                other.reviewRate == reviewRate) &&
            (identical(other.reviewComment, reviewComment) ||
                other.reviewComment == reviewComment) &&
            (identical(other.reviewDate, reviewDate) ||
                other.reviewDate == reviewDate) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userImageUrl, userImageUrl) ||
                other.userImageUrl == userImageUrl) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      reviewId,
      reviewRate,
      reviewComment,
      reviewDate,
      userId,
      userName,
      userImageUrl,
      id,
      name,
      description,
      type,
      imageUrl,
      rate,
      totalReviews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewBusinessImplCopyWith<_$ReviewBusinessImpl> get copyWith =>
      __$$ReviewBusinessImplCopyWithImpl<_$ReviewBusinessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        business,
    TResult? Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        product,
    TResult? Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        service,
  }) {
    return business?.call(
        reviewId,
        reviewRate,
        reviewComment,
        reviewDate,
        userId,
        userName,
        userImageUrl,
        id,
        name,
        description,
        type,
        imageUrl,
        rate,
        totalReviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        business,
    TResult Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        product,
    TResult Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        service,
    required TResult orElse(),
  }) {
    if (business != null) {
      return business(
          reviewId,
          reviewRate,
          reviewComment,
          reviewDate,
          userId,
          userName,
          userImageUrl,
          id,
          name,
          description,
          type,
          imageUrl,
          rate,
          totalReviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReviewBusiness value) business,
    required TResult Function(ReviewProduct value) product,
    required TResult Function(ReviewService value) service,
  }) {
    return business(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewBusiness value)? business,
    TResult? Function(ReviewProduct value)? product,
    TResult? Function(ReviewService value)? service,
  }) {
    return business?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewBusiness value)? business,
    TResult Function(ReviewProduct value)? product,
    TResult Function(ReviewService value)? service,
    required TResult orElse(),
  }) {
    if (business != null) {
      return business(this);
    }
    return orElse();
  }
}

abstract class ReviewBusiness implements Review {
  const factory ReviewBusiness(
      {required final String reviewId,
      required final double reviewRate,
      required final String reviewComment,
      required final DateTime reviewDate,
      required final String userId,
      required final String userName,
      final String? userImageUrl,
      required final String id,
      required final String name,
      required final String description,
      required final String type,
      final String? imageUrl,
      required final double rate,
      required final int totalReviews}) = _$ReviewBusinessImpl;

  @override
  String get reviewId;
  @override
  double get reviewRate;
  @override
  String get reviewComment;
  @override
  DateTime get reviewDate;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String? get userImageUrl;
  @override

  /// The id of the business that the review is for
  String get id;
  @override

  /// The name of the business that the review is for
  String get name;
  @override

  /// The description of the business that the review is for
  String get description;
  @override

  /// The type of the business that the review is for
  String get type;
  @override

  /// The image url of the business that the review is for
  String? get imageUrl;
  @override

  /// The average rating of the business that the review is for
  double get rate;
  @override

  /// The total number of reviews for the business that the review is for
  int get totalReviews;
  @override
  @JsonKey(ignore: true)
  _$$ReviewBusinessImplCopyWith<_$ReviewBusinessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewProductImplCopyWith<$Res>
    implements $ReviewCopyWith<$Res> {
  factory _$$ReviewProductImplCopyWith(
          _$ReviewProductImpl value, $Res Function(_$ReviewProductImpl) then) =
      __$$ReviewProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reviewId,
      double reviewRate,
      String reviewComment,
      DateTime reviewDate,
      String userId,
      String userName,
      String? userImageUrl,
      String businessId,
      String businessName,
      String id,
      String name,
      String description,
      String type,
      String? imageUrl,
      double rate,
      int totalReviews});
}

/// @nodoc
class __$$ReviewProductImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewProductImpl>
    implements _$$ReviewProductImplCopyWith<$Res> {
  __$$ReviewProductImplCopyWithImpl(
      _$ReviewProductImpl _value, $Res Function(_$ReviewProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? reviewRate = null,
    Object? reviewComment = null,
    Object? reviewDate = null,
    Object? userId = null,
    Object? userName = null,
    Object? userImageUrl = freezed,
    Object? businessId = null,
    Object? businessName = null,
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? imageUrl = freezed,
    Object? rate = null,
    Object? totalReviews = null,
  }) {
    return _then(_$ReviewProductImpl(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewRate: null == reviewRate
          ? _value.reviewRate
          : reviewRate // ignore: cast_nullable_to_non_nullable
              as double,
      reviewComment: null == reviewComment
          ? _value.reviewComment
          : reviewComment // ignore: cast_nullable_to_non_nullable
              as String,
      reviewDate: null == reviewDate
          ? _value.reviewDate
          : reviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userImageUrl: freezed == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReviewProductImpl implements ReviewProduct {
  const _$ReviewProductImpl(
      {required this.reviewId,
      required this.reviewRate,
      required this.reviewComment,
      required this.reviewDate,
      required this.userId,
      required this.userName,
      this.userImageUrl,
      required this.businessId,
      required this.businessName,
      required this.id,
      required this.name,
      required this.description,
      required this.type,
      this.imageUrl,
      required this.rate,
      required this.totalReviews});

  @override
  final String reviewId;
  @override
  final double reviewRate;
  @override
  final String reviewComment;
  @override
  final DateTime reviewDate;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String? userImageUrl;
  @override
  final String businessId;
  @override
  final String businessName;

  /// The id of the product that the review is for
  @override
  final String id;

  /// The name of the product that the review is for
  @override
  final String name;

  /// The description of the product that the review is for
  @override
  final String description;

  /// The type of the product that the review is for
  @override
  final String type;

  /// The image url of the product that the review is for
  @override
  final String? imageUrl;

  /// The average rating of the product that the review is for
  @override
  final double rate;

  /// The total number of reviews for the product that the review is for
  @override
  final int totalReviews;

  @override
  String toString() {
    return 'Review.product(reviewId: $reviewId, reviewRate: $reviewRate, reviewComment: $reviewComment, reviewDate: $reviewDate, userId: $userId, userName: $userName, userImageUrl: $userImageUrl, businessId: $businessId, businessName: $businessName, id: $id, name: $name, description: $description, type: $type, imageUrl: $imageUrl, rate: $rate, totalReviews: $totalReviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewProductImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.reviewRate, reviewRate) ||
                other.reviewRate == reviewRate) &&
            (identical(other.reviewComment, reviewComment) ||
                other.reviewComment == reviewComment) &&
            (identical(other.reviewDate, reviewDate) ||
                other.reviewDate == reviewDate) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userImageUrl, userImageUrl) ||
                other.userImageUrl == userImageUrl) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      reviewId,
      reviewRate,
      reviewComment,
      reviewDate,
      userId,
      userName,
      userImageUrl,
      businessId,
      businessName,
      id,
      name,
      description,
      type,
      imageUrl,
      rate,
      totalReviews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewProductImplCopyWith<_$ReviewProductImpl> get copyWith =>
      __$$ReviewProductImplCopyWithImpl<_$ReviewProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        business,
    TResult? Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        product,
    TResult? Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        service,
  }) {
    return product?.call(
        reviewId,
        reviewRate,
        reviewComment,
        reviewDate,
        userId,
        userName,
        userImageUrl,
        businessId,
        businessName,
        id,
        name,
        description,
        type,
        imageUrl,
        rate,
        totalReviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        business,
    TResult Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        product,
    TResult Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        service,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(
          reviewId,
          reviewRate,
          reviewComment,
          reviewDate,
          userId,
          userName,
          userImageUrl,
          businessId,
          businessName,
          id,
          name,
          description,
          type,
          imageUrl,
          rate,
          totalReviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReviewBusiness value) business,
    required TResult Function(ReviewProduct value) product,
    required TResult Function(ReviewService value) service,
  }) {
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewBusiness value)? business,
    TResult? Function(ReviewProduct value)? product,
    TResult? Function(ReviewService value)? service,
  }) {
    return product?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewBusiness value)? business,
    TResult Function(ReviewProduct value)? product,
    TResult Function(ReviewService value)? service,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(this);
    }
    return orElse();
  }
}

abstract class ReviewProduct implements Review {
  const factory ReviewProduct(
      {required final String reviewId,
      required final double reviewRate,
      required final String reviewComment,
      required final DateTime reviewDate,
      required final String userId,
      required final String userName,
      final String? userImageUrl,
      required final String businessId,
      required final String businessName,
      required final String id,
      required final String name,
      required final String description,
      required final String type,
      final String? imageUrl,
      required final double rate,
      required final int totalReviews}) = _$ReviewProductImpl;

  @override
  String get reviewId;
  @override
  double get reviewRate;
  @override
  String get reviewComment;
  @override
  DateTime get reviewDate;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String? get userImageUrl;
  String get businessId;
  String get businessName;
  @override

  /// The id of the product that the review is for
  String get id;
  @override

  /// The name of the product that the review is for
  String get name;
  @override

  /// The description of the product that the review is for
  String get description;
  @override

  /// The type of the product that the review is for
  String get type;
  @override

  /// The image url of the product that the review is for
  String? get imageUrl;
  @override

  /// The average rating of the product that the review is for
  double get rate;
  @override

  /// The total number of reviews for the product that the review is for
  int get totalReviews;
  @override
  @JsonKey(ignore: true)
  _$$ReviewProductImplCopyWith<_$ReviewProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewServiceImplCopyWith<$Res>
    implements $ReviewCopyWith<$Res> {
  factory _$$ReviewServiceImplCopyWith(
          _$ReviewServiceImpl value, $Res Function(_$ReviewServiceImpl) then) =
      __$$ReviewServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reviewId,
      double reviewRate,
      String reviewComment,
      DateTime reviewDate,
      String userId,
      String userName,
      String? userImageUrl,
      String businessId,
      String businessName,
      String id,
      String name,
      String description,
      String type,
      String? imageUrl,
      double rate,
      int totalReviews});
}

/// @nodoc
class __$$ReviewServiceImplCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$ReviewServiceImpl>
    implements _$$ReviewServiceImplCopyWith<$Res> {
  __$$ReviewServiceImplCopyWithImpl(
      _$ReviewServiceImpl _value, $Res Function(_$ReviewServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewId = null,
    Object? reviewRate = null,
    Object? reviewComment = null,
    Object? reviewDate = null,
    Object? userId = null,
    Object? userName = null,
    Object? userImageUrl = freezed,
    Object? businessId = null,
    Object? businessName = null,
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? imageUrl = freezed,
    Object? rate = null,
    Object? totalReviews = null,
  }) {
    return _then(_$ReviewServiceImpl(
      reviewId: null == reviewId
          ? _value.reviewId
          : reviewId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewRate: null == reviewRate
          ? _value.reviewRate
          : reviewRate // ignore: cast_nullable_to_non_nullable
              as double,
      reviewComment: null == reviewComment
          ? _value.reviewComment
          : reviewComment // ignore: cast_nullable_to_non_nullable
              as String,
      reviewDate: null == reviewDate
          ? _value.reviewDate
          : reviewDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userImageUrl: freezed == userImageUrl
          ? _value.userImageUrl
          : userImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      businessId: null == businessId
          ? _value.businessId
          : businessId // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReviewServiceImpl implements ReviewService {
  const _$ReviewServiceImpl(
      {required this.reviewId,
      required this.reviewRate,
      required this.reviewComment,
      required this.reviewDate,
      required this.userId,
      required this.userName,
      this.userImageUrl,
      required this.businessId,
      required this.businessName,
      required this.id,
      required this.name,
      required this.description,
      required this.type,
      this.imageUrl,
      required this.rate,
      required this.totalReviews});

  @override
  final String reviewId;
  @override
  final double reviewRate;
  @override
  final String reviewComment;
  @override
  final DateTime reviewDate;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String? userImageUrl;
  @override
  final String businessId;
  @override
  final String businessName;

  /// The id of the service that the review is for
  @override
  final String id;

  /// The name of the service that the review is for
  @override
  final String name;

  /// The description of the service that the review is for
  @override
  final String description;

  /// The type of the service that the review is for
  @override
  final String type;

  /// The image url of the service that the review is for
  @override
  final String? imageUrl;

  /// The average rating of the service that the review is for
  @override
  final double rate;

  /// The total number of reviews for the service that the review is for
  @override
  final int totalReviews;

  @override
  String toString() {
    return 'Review.service(reviewId: $reviewId, reviewRate: $reviewRate, reviewComment: $reviewComment, reviewDate: $reviewDate, userId: $userId, userName: $userName, userImageUrl: $userImageUrl, businessId: $businessId, businessName: $businessName, id: $id, name: $name, description: $description, type: $type, imageUrl: $imageUrl, rate: $rate, totalReviews: $totalReviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewServiceImpl &&
            (identical(other.reviewId, reviewId) ||
                other.reviewId == reviewId) &&
            (identical(other.reviewRate, reviewRate) ||
                other.reviewRate == reviewRate) &&
            (identical(other.reviewComment, reviewComment) ||
                other.reviewComment == reviewComment) &&
            (identical(other.reviewDate, reviewDate) ||
                other.reviewDate == reviewDate) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userImageUrl, userImageUrl) ||
                other.userImageUrl == userImageUrl) &&
            (identical(other.businessId, businessId) ||
                other.businessId == businessId) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      reviewId,
      reviewRate,
      reviewComment,
      reviewDate,
      userId,
      userName,
      userImageUrl,
      businessId,
      businessName,
      id,
      name,
      description,
      type,
      imageUrl,
      rate,
      totalReviews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewServiceImplCopyWith<_$ReviewServiceImpl> get copyWith =>
      __$$ReviewServiceImplCopyWithImpl<_$ReviewServiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        business,
    TResult? Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        product,
    TResult? Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        service,
  }) {
    return service?.call(
        reviewId,
        reviewRate,
        reviewComment,
        reviewDate,
        userId,
        userName,
        userImageUrl,
        businessId,
        businessName,
        id,
        name,
        description,
        type,
        imageUrl,
        rate,
        totalReviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        business,
    TResult Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        product,
    TResult Function(
            String reviewId,
            double reviewRate,
            String reviewComment,
            DateTime reviewDate,
            String userId,
            String userName,
            String? userImageUrl,
            String businessId,
            String businessName,
            String id,
            String name,
            String description,
            String type,
            String? imageUrl,
            double rate,
            int totalReviews)?
        service,
    required TResult orElse(),
  }) {
    if (service != null) {
      return service(
          reviewId,
          reviewRate,
          reviewComment,
          reviewDate,
          userId,
          userName,
          userImageUrl,
          businessId,
          businessName,
          id,
          name,
          description,
          type,
          imageUrl,
          rate,
          totalReviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReviewBusiness value) business,
    required TResult Function(ReviewProduct value) product,
    required TResult Function(ReviewService value) service,
  }) {
    return service(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewBusiness value)? business,
    TResult? Function(ReviewProduct value)? product,
    TResult? Function(ReviewService value)? service,
  }) {
    return service?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewBusiness value)? business,
    TResult Function(ReviewProduct value)? product,
    TResult Function(ReviewService value)? service,
    required TResult orElse(),
  }) {
    if (service != null) {
      return service(this);
    }
    return orElse();
  }
}

abstract class ReviewService implements Review {
  const factory ReviewService(
      {required final String reviewId,
      required final double reviewRate,
      required final String reviewComment,
      required final DateTime reviewDate,
      required final String userId,
      required final String userName,
      final String? userImageUrl,
      required final String businessId,
      required final String businessName,
      required final String id,
      required final String name,
      required final String description,
      required final String type,
      final String? imageUrl,
      required final double rate,
      required final int totalReviews}) = _$ReviewServiceImpl;

  @override
  String get reviewId;
  @override
  double get reviewRate;
  @override
  String get reviewComment;
  @override
  DateTime get reviewDate;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String? get userImageUrl;
  String get businessId;
  String get businessName;
  @override

  /// The id of the service that the review is for
  String get id;
  @override

  /// The name of the service that the review is for
  String get name;
  @override

  /// The description of the service that the review is for
  String get description;
  @override

  /// The type of the service that the review is for
  String get type;
  @override

  /// The image url of the service that the review is for
  String? get imageUrl;
  @override

  /// The average rating of the service that the review is for
  double get rate;
  @override

  /// The total number of reviews for the service that the review is for
  int get totalReviews;
  @override
  @JsonKey(ignore: true)
  _$$ReviewServiceImplCopyWith<_$ReviewServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
