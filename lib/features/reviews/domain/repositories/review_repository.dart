import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/reviews/domain/entities/review.dart';
import 'package:fin_dall/features/reviews/domain/entities/review_sort.dart';

abstract class ReviewRepository {
  /// Get Reviews of the user from the server
  ///
  /// [page] is the page number of the reviews to fetch
  ///
  /// [pageSize] is the number of reviews to fetch per page
  ///
  /// Returns a [Future<Result<List<Review>>>] that fetches the reviews for that page
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<List<Review>>> getReviews({int page = 1, int pageSize = 10});

  /// Get Reviews for a product from the server
  ///
  /// [productId] is the id of the product to fetch reviews for
  ///
  /// [page] is the page number of the reviews to fetch
  ///
  /// [pageSize] is the number of reviews to fetch per page
  ///
  /// [sort] is the sorting order of the reviews
  ///
  /// Returns a [Future<Result<List<Review>>] that fetches the reviews for that page
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<List<Review>>> getProductReviews({
    required String productId,
    int page = 1,
    int pageSize = 10,
    ReviewSort sort = ReviewSort.allStars,
  });

  /// Get Reviews for a business from the server
  ///
  /// [businessId] is the id of the business to fetch reviews for
  ///
  /// [page] is the page number of the reviews to fetch
  ///
  /// [pageSize] is the number of reviews to fetch per page
  ///
  /// [sort] is the sorting order of the reviews
  ///
  /// Returns a [Future<Result<List<Review>>] that fetches the reviews for that page
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<List<Review>>> getBusinessReviews({
    required String businessId,
    int page = 1,
    int pageSize = 10,
    ReviewSort sort = ReviewSort.allStars,
  });

  /// Get Review for a service from the server
  ///
  /// [serviceId] is the id of the service to fetch reviews for
  ///
  /// [page] is the page number of the reviews to fetch
  ///
  /// [pageSize] is the number of reviews to fetch per page
  ///
  /// [sort] is the sorting order of the reviews
  ///
  /// Returns a [Future<Result<List<Review>>] that fetches the reviews for that page
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<List<Review>>> getServiceReviews({
    required String serviceId,
    int page = 1,
    int pageSize = 10,
    ReviewSort sort = ReviewSort.allStars,
  });

  /// Post a review for a product to the server
  ///
  /// [productId] is the id of the product to post the review for
  ///
  /// [rate] is the rating of the review
  ///
  /// [comment] is the comment of the review
  ///
  /// Returns a [Future<Result<Review>>] that posts the review
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<Review>> postProductReview({
    required String productId,
    required double rate,
    required String comment,
  });

  /// Post a review for a business to the server
  ///
  /// [businessId] is the id of the business to post the review for
  ///
  /// [rate] is the rating of the review
  ///
  /// [comment] is the comment of the review
  ///
  /// Returns a [Future<Result<Review>>] that posts the review
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<Review>> postBusinessReview({
    required String businessId,
    required double rate,
    required String comment,
  });

  /// Post a review for a service to the server
  ///
  /// [serviceId] is the id of the service to post the review for
  ///
  /// [rate] is the rating of the review
  ///
  /// [comment] is the comment of the review
  ///
  /// Returns a [Future<Result<Review>>] that posts the review
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<Review>> postServiceReview({
    required String serviceId,
    required double rate,
    required String comment,
  });

  /// Delete a review from the server
  ///
  /// [reviewId] is the id of the review to delete
  ///
  /// Returns a [Future<Result<Review>>] that deletes the review
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<Review>> deleteReview({
    required String reviewId,
  });

  /// Edit a review on the server
  ///
  /// [reviewId] is the id of the review to edit
  ///
  /// [rate] is the rating of the review
  ///
  /// [comment] is the comment of the review
  ///
  /// Returns a [Future<Result<Review>>] that edits the review
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<Review>> editReview({
    required String reviewId,
    required double rate,
    required String comment,
  });

  /// Search for user reviews on the server
  ///
  /// [query] is the search query
  ///
  /// returns a [Future<Result<List<Review>>] that searches for the reviews
  ///
  /// Throws a [Failure] if an error occurs
  ///
  Future<Result<List<Review>>> searchUserReviews({
    required String query,
  });
}
