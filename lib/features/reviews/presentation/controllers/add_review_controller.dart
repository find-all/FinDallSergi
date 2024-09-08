import 'package:fin_dall/core/utils/controller_state.dart';
import 'package:fin_dall/features/reviews/data/repositories/review_repository_impl.dart';
import 'package:fin_dall/features/reviews/domain/entities/review.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_review_controller.g.dart';

@riverpod

/// Add review controller
///
/// Handles adding reviews for products, businesses, and services
///
/// Uses [ReviewRepositoryImpl] to add reviews
///
/// Can add reviews for products, businesses, and services using the respective methods
///
class AddReviewController extends _$AddReviewController {
  @override
  ControllerState<Review> build() {
    return const ControllerStateInitial();
  }

  /// Add a review for a product
  ///
  /// [productId] is the id of the product to add the review for
  ///
  /// [reviewRate] is the rating of the review
  ///
  /// [reviewComment] is the comment of the review
  ///
  Future<void> addReviewProduct(
      {required String productId,
      required double reviewRate,
      required String reviewComment}) async {
    state = const ControllerStateLoading();

    final repository = ref.read(reviewRepositoryProvider);

    final result = await repository.postProductReview(
        productId: productId, rate: reviewRate, comment: reviewComment);

    result.when(
      success: (review) {
        state = ControllerStateData(review);
      },
      error: (error) {
        state = ControllerStateError(error);
      },
    );
  }

  /// Add a review for a business
  ///
  /// [businessId] is the id of the business to add the review for
  ///
  /// [reviewRate] is the rating of the review
  ///
  /// [reviewComment] is the comment of the review
  ///
  Future<void> addReviewBusiness(
      {required String businessId,
      required double reviewRate,
      required String reviewComment}) async {
    state = const ControllerStateLoading();

    final repository = ref.read(reviewRepositoryProvider);

    final result = await repository.postBusinessReview(
        businessId: businessId, rate: reviewRate, comment: reviewComment);

    result.when(
      success: (review) {
        state = ControllerStateData(review);
      },
      error: (error) {
        state = ControllerStateError(error);
      },
    );
  }

  /// Add a review for a service
  ///
  /// [serviceId] is the id of the service to add the review for
  ///
  /// [reviewRate] is the rating of the review
  ///
  /// [reviewComment] is the comment of the review
  ///
  Future<void> addReviewService(
      {required String serviceId,
      required double reviewRate,
      required String reviewComment}) async {
    state = const ControllerStateLoading();

    final repository = ref.read(reviewRepositoryProvider);

    final result = await repository.postServiceReview(
        serviceId: serviceId, rate: reviewRate, comment: reviewComment);

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
