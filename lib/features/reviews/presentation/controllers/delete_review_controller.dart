import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/reviews/data/repositories/review_repository_impl.dart';
import 'package:fin_dall/features/reviews/domain/entities/review.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_review_controller.g.dart';

@riverpod

/// Delete review controller
///
/// Handles deleting reviews for products, businesses, and services
///
/// Uses [ReviewRepositoryImpl] to delete reviews
///
class DeleteReviewController extends _$DeleteReviewController {
  @override
  ControllerState<Review> build() {
    return const ControllerStateInitial();
  }

  /// Delete a review
  ///
  /// [reviewId] is the id of the review to delete
  ///
  Future<void> deleteReview({required String reviewId}) async {
    state = const ControllerStateLoading();

    final repository = ref.read(reviewRepositoryProvider);

    final result = await repository.deleteReview(reviewId: reviewId);

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
