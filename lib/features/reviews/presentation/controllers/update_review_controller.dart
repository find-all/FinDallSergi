import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/reviews/data/repositories/review_repository_impl.dart';
import 'package:fin_dall/features/reviews/domain/entities/review.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_review_controller.g.dart';

@riverpod

/// Update review controller
///
/// Handles updating reviews for products, businesses, and services
///
/// Uses [ReviewRepositoryImpl] to add reviews
///
/// Can add reviews for products, businesses, and services using the respective methods
///
class UpdateReviewController extends _$UpdateReviewController {
  @override
  ControllerState<Review> build() {
    return const ControllerStateInitial();
  }

  /// Update a review
  ///
  /// [reviewId] is the id of the review to update
  ///
  /// [reviewRate] is the rating of the review
  ///
  /// [reviewComment] is the comment of the review
  ///
  Future<void> updateReview(
      {required String reviewId,
      required double reviewRate,
      required String reviewComment}) async {
    state = const ControllerStateLoading();

    final repository = ref.read(reviewRepositoryProvider);

    final result = await repository.editReview(
        reviewId: reviewId, rate: reviewRate, comment: reviewComment);

    result.when(
      success: (review) {
        state = ControllerStateData(review);
      },
      error: (error) {
        state = ControllerStateError(error);
      },
    );
  }
}
