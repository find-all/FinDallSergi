// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';

@Freezed(when: FreezedWhenOptions(when: false))
class Review with _$Review {
  const factory Review.business({
    required String reviewId,
    required double reviewRate,
    required String reviewComment,
    required DateTime reviewDate,
    required String userId,
    required String userName,
    String? userImageUrl,

    /// The id of the business that the review is for
    required String id,

    /// The name of the business that the review is for
    required String name,

    /// The description of the business that the review is for
    required String description,

    /// The type of the business that the review is for
    required String type,

    /// The image url of the business that the review is for
    String? imageUrl,

    /// The average rating of the business that the review is for
    required double rate,

    /// The total number of reviews for the business that the review is for
    required int totalReviews,
  }) = ReviewBusiness;
  const factory Review.product({
    required String reviewId,
    required double reviewRate,
    required String reviewComment,
    required DateTime reviewDate,
    required String userId,
    required String userName,
    String? userImageUrl,
    required String businessId,
    required String businessName,

    /// The id of the product that the review is for
    required String id,

    /// The name of the product that the review is for
    required String name,

    /// The description of the product that the review is for
    required String description,

    /// The type of the product that the review is for
    required String type,

    /// The image url of the product that the review is for
    String? imageUrl,

    /// The average rating of the product that the review is for
    required double rate,

    /// The total number of reviews for the product that the review is for
    required int totalReviews,
  }) = ReviewProduct;

  const factory Review.service({
    required String reviewId,
    required double reviewRate,
    required String reviewComment,
    required DateTime reviewDate,
    required String userId,
    required String userName,
    String? userImageUrl,
    required String businessId,
    required String businessName,

    /// The id of the service that the review is for
    required String id,

    /// The name of the service that the review is for
    required String name,

    /// The description of the service that the review is for
    required String description,

    /// The type of the service that the review is for
    required String type,

    /// The image url of the service that the review is for
    String? imageUrl,

    /// The average rating of the service that the review is for
    required double rate,

    /// The total number of reviews for the service that the review is for
    required int totalReviews,
  }) = ReviewService;
}
