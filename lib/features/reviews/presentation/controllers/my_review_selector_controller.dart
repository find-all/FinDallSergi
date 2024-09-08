import 'package:fin_dall/features/reviews/domain/entities/review.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'my_review_selector_controller.g.dart';

@riverpod
class MyReviewSelectorController extends _$MyReviewSelectorController {
  @override
  Review? build() {
    return null;
  }

  void updateSelectedReview(Review review) {
    state = review;
  }
}
