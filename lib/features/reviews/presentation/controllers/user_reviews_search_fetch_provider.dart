import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/reviews/data/repositories/review_repository_impl.dart';
import 'package:fin_dall/features/reviews/domain/entities/review.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_reviews_search_fetch_provider.g.dart';

@riverpod
Future<Result<List<Review>>> Function({required String query})
    userReviewsSearchFetch(UserReviewsSearchFetchRef ref) {
  final repository = ref.watch(reviewRepositoryProvider);

  return repository.searchUserReviews;
}
