import 'package:fin_dall/core/clients/storage_client/storage_client.dart';
import 'package:fin_dall/core/error/api_failure.dart';
import 'package:fin_dall/core/utils/result.dart';
import 'package:fin_dall/features/authentication/data/datasources/local/authentication_local_datasource.dart';
import 'package:fin_dall/features/authentication/data/models/user_model.dart';
import 'package:fin_dall/features/reviews/domain/entities/review.dart';
import 'package:fin_dall/features/reviews/domain/entities/review_sort.dart';
import 'package:fin_dall/features/reviews/domain/repositories/review_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'review_repository_impl.g.dart';

class ReviewRepositoryImpl implements ReviewRepository {
  final StorageClient<UserModel> _authenticationLocalDatasource;

  ReviewRepositoryImpl({
    required StorageClient<UserModel> authenticationLocalDatasource,
  }) : _authenticationLocalDatasource = authenticationLocalDatasource;

  final List<Review> _mockReviews =
      List.generate(100, (index) => index).map((index) {
    final entryTypeIndex =
        index % 3; // Para alternar entre los tipos: business, product, service

    switch (entryTypeIndex) {
      case 0:
        return Review.business(
          reviewId: '$index',
          reviewRate:
              (index % 5) + 0.5, // Genera una calificación entre 0.5 y 5.0
          reviewComment: 'This is a good business',
          reviewDate: DateTime.now()
              .subtract(Duration(days: index)), // Fecha de revisión decreciente
          id: '$index',
          name: 'Business $index',
          description: 'This is a business',
          type: 'business',
          imageUrl: 'https://via.placeholder.com/150',
          rate: (index % 5) + 0.5, // Genera una calificación entre 0.5 y 5.0
          totalReviews: 100 + index,
          userId: '1',
          userName: 'User ',
          userImageUrl: 'https://via.placeholder.com/150',
        );

      case 1:
        return Review.product(
          reviewId: '$index',
          reviewRate: (index % 5) + 0.5,
          reviewComment: 'This is a good product',
          reviewDate: DateTime.now().subtract(Duration(days: index)),
          id: '$index',
          name: 'Product $index',
          description: 'This is a product',
          type: 'product',
          imageUrl: 'https://via.placeholder.com/150',
          rate: (index % 5) + 0.5,
          totalReviews: 100 + index,
          businessId: '$index',
          businessName: 'Business $index',
          userId: '1',
          userName: 'User ',
          userImageUrl: 'https://via.placeholder.com/150',
        );

      default:
        return Review.service(
          reviewId: '$index',
          reviewRate: (index % 5) + 0.5,
          reviewComment: 'This is a good service',
          reviewDate: DateTime.now().subtract(Duration(days: index)),
          id: '$index',
          name: 'Service $index',
          description: 'This is a service',
          type: 'service',
          imageUrl: 'https://via.placeholder.com/150',
          rate: (index % 5) + 0.5,
          totalReviews: 100 + index,
          businessId: '$index',
          businessName: 'Business $index',
          userId: '1',
          userName: 'User ',
          userImageUrl: 'https://via.placeholder.com/150',
        );
    }
  }).toList();

  @override
  Future<Result<Review>> deleteReview({required String reviewId}) async {
    final userResult = await _authenticationLocalDatasource.read();

    if (userResult.isError) {
      return Result.error(
        UnauthorizedFailure(
          error: 'User not logged in',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final index =
        _mockReviews.indexWhere((element) => element.reviewId == reviewId);

    if (index == -1) {
      return Result.error(
        NotFoundFailure(
          error: 'Review not found',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final review = _mockReviews.removeAt(index);

    return Result.success(review);
  }

  @override
  Future<Result<Review>> editReview(
      {required String reviewId,
      required double rate,
      required String comment}) async {
    final userResult = await _authenticationLocalDatasource.read();

    if (userResult.isError) {
      return Result.error(
        UnauthorizedFailure(
          error: 'User not logged in',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final index =
        _mockReviews.indexWhere((element) => element.reviewId == reviewId);

    if (index == -1) {
      return Result.error(
        NotFoundFailure(
          error: 'Review not found',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final review = _mockReviews[index];

    final updatedReview = review.copyWith(
      reviewRate: rate,
      reviewComment: comment,
    );

    _mockReviews[index] = updatedReview;

    return Result.success(updatedReview);
  }

  @override
  Future<Result<List<Review>>> getBusinessReviews(
      {required String businessId,
      int page = 1,
      int pageSize = 10,
      ReviewSort sort = ReviewSort.allStars}) async {
    final userResult = await _authenticationLocalDatasource.read();

    if (userResult.isError) {
      return Result.error(
        UnauthorizedFailure(
          error: 'User not logged in',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final reviews = _mockReviews
        .where(
            (element) => element is ReviewBusiness && element.id == businessId)
        .toList();

    switch (sort) {
      case ReviewSort.allStars:
        reviews.sort((a, b) => b.rate.compareTo(a.rate));
        break;
      case ReviewSort.oneStar:
        reviews.retainWhere((element) => element.rate == 1);
        break;
      case ReviewSort.twoStar:
        reviews.retainWhere((element) => element.rate == 2);
        break;
      case ReviewSort.threeStar:
        reviews.retainWhere((element) => element.rate == 3);
        break;
      case ReviewSort.fourStar:
        reviews.retainWhere((element) => element.rate == 4);
        break;
      case ReviewSort.fiveStar:
        reviews.retainWhere((element) => element.rate == 5);
        break;
    }

    return Result.success(reviews.sublist(
      (page - 1) * pageSize,
      (page - 1) * pageSize + pageSize,
    ));
  }

  @override
  Future<Result<List<Review>>> getProductReviews(
      {required String productId,
      int page = 1,
      int pageSize = 10,
      ReviewSort sort = ReviewSort.allStars}) async {
    final userResult = await _authenticationLocalDatasource.read();

    if (userResult.isError) {
      return Result.error(
        UnauthorizedFailure(
          error: 'User not logged in',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final reviews = _mockReviews
        .where((element) => element is ReviewProduct && element.id == productId)
        .toList();

    switch (sort) {
      case ReviewSort.allStars:
        reviews.sort((a, b) => b.rate.compareTo(a.rate));
        break;
      case ReviewSort.oneStar:
        reviews.retainWhere((element) => element.rate == 1);
        break;
      case ReviewSort.twoStar:
        reviews.retainWhere((element) => element.rate == 2);
        break;
      case ReviewSort.threeStar:
        reviews.retainWhere((element) => element.rate == 3);
        break;
      case ReviewSort.fourStar:
        reviews.retainWhere((element) => element.rate == 4);
        break;
      case ReviewSort.fiveStar:
        reviews.retainWhere((element) => element.rate == 5);
        break;
    }

    return Result.success(
      reviews.sublist(
        (page - 1) * pageSize,
        (page - 1) * pageSize + pageSize,
      ),
    );
  }

  @override
  Future<Result<List<Review>>> getReviews(
      {int page = 1, int pageSize = 10}) async {
    final userResult = await _authenticationLocalDatasource.read();

    if (userResult.isError) {
      return Result.error(
        UnauthorizedFailure(
          error: 'User not logged in',
          stackTrace: StackTrace.current,
        ),
      );
    }

    return Result.success(_mockReviews.sublist(
      (page - 1) * pageSize,
      (page - 1) * pageSize + pageSize,
    ));
  }

  @override
  Future<Result<List<Review>>> getServiceReviews(
      {required String serviceId,
      int page = 1,
      int pageSize = 10,
      ReviewSort sort = ReviewSort.allStars}) async {
    final userResult = await _authenticationLocalDatasource.read();

    if (userResult.isError) {
      return Result.error(
        UnauthorizedFailure(
          error: 'User not logged in',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final reviews = _mockReviews
        .where((element) => element is ReviewService && element.id == serviceId)
        .toList();

    switch (sort) {
      case ReviewSort.allStars:
        reviews.sort((a, b) => b.rate.compareTo(a.rate));
        break;
      case ReviewSort.oneStar:
        reviews.retainWhere((element) => element.rate == 1);
        break;
      case ReviewSort.twoStar:
        reviews.retainWhere((element) => element.rate == 2);
        break;
      case ReviewSort.threeStar:
        reviews.retainWhere((element) => element.rate == 3);
        break;
      case ReviewSort.fourStar:
        reviews.retainWhere((element) => element.rate == 4);
        break;
      case ReviewSort.fiveStar:
        reviews.retainWhere((element) => element.rate == 5);
        break;
    }

    return Result.success(reviews.sublist(
      (page - 1) * pageSize,
      (page - 1) * pageSize + pageSize,
    ));
  }

  @override
  Future<Result<Review>> postBusinessReview(
      {required String businessId,
      required double rate,
      required String comment}) async {
    final userResult = await _authenticationLocalDatasource.read();

    if (userResult.isError) {
      return Result.error(
        UnauthorizedFailure(
          error: 'User not logged in',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final businessIndex = _mockReviews.indexWhere(
      (element) => element is ReviewBusiness && element.id == businessId,
    );

    if (businessIndex == -1) {
      return Result.error(
        NotFoundFailure(
          error: 'Business not found',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final business = _mockReviews[businessIndex];

    final review = Review.business(
      reviewId: '${_mockReviews.length}',
      reviewRate: rate,
      reviewComment: comment,
      reviewDate: DateTime.now(),
      id: business.id,
      name: business.name,
      description: business.description,
      type: business.type,
      imageUrl: business.imageUrl,
      rate: business.rate,
      totalReviews: business.totalReviews + 1,
      userId: '1',
      userName: 'User ',
      userImageUrl: 'https://via.placeholder.com/150',
    );

    _mockReviews.add(review);

    return Result.success(review);
  }

  @override
  Future<Result<Review>> postProductReview(
      {required String productId,
      required double rate,
      required String comment}) async {
    final userResult = await _authenticationLocalDatasource.read();

    if (userResult.isError) {
      return Result.error(
        UnauthorizedFailure(
          error: 'User not logged in',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final productIndex = _mockReviews.indexWhere(
      (element) => element is ReviewProduct && element.id == productId,
    );

    if (productIndex == -1) {
      return Result.error(
        NotFoundFailure(
          error: 'Product not found',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final product = _mockReviews[productIndex] as ReviewProduct;

    final review = Review.product(
      reviewId: '${_mockReviews.length}',
      reviewRate: rate,
      reviewComment: comment,
      reviewDate: DateTime.now(),
      id: product.id,
      name: product.name,
      description: product.description,
      type: product.type,
      imageUrl: product.imageUrl,
      rate: product.rate,
      totalReviews: product.totalReviews + 1,
      businessId: product.businessId,
      businessName: product.businessName,
      userId: '1',
      userName: 'User ',
      userImageUrl: 'https://via.placeholder.com/150',
    );

    _mockReviews.add(review);

    return Result.success(review);
  }

  @override
  Future<Result<Review>> postServiceReview(
      {required String serviceId,
      required double rate,
      required String comment}) async {
    final userResult = await _authenticationLocalDatasource.read();

    if (userResult.isError) {
      return Result.error(
        UnauthorizedFailure(
          error: 'User not logged in',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final serviceIndex = _mockReviews.indexWhere(
      (element) => element is ReviewService && element.id == serviceId,
    );

    if (serviceIndex == -1) {
      return Result.error(
        NotFoundFailure(
          error: 'Service not found',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final service = _mockReviews[serviceIndex] as ReviewService;

    final review = Review.service(
      reviewId: '${_mockReviews.length}',
      reviewRate: rate,
      reviewComment: comment,
      reviewDate: DateTime.now(),
      id: service.id,
      name: service.name,
      description: service.description,
      type: service.type,
      imageUrl: service.imageUrl,
      rate: service.rate,
      totalReviews: service.totalReviews + 1,
      businessId: service.businessId,
      businessName: service.businessName,
      userId: '1',
      userName: 'User ',
      userImageUrl: 'https://via.placeholder.com/150',
    );

    _mockReviews.add(review);

    return Result.success(review);
  }

  @override
  Future<Result<List<Review>>> searchUserReviews(
      {required String query}) async {
    final userResult = await _authenticationLocalDatasource.read();

    if (userResult.isError) {
      return Result.error(
        UnauthorizedFailure(
          error: 'User not logged in',
          stackTrace: StackTrace.current,
        ),
      );
    }

    final reviews = _mockReviews.where((element) {
      final name = element.name.toLowerCase();
      final objectiveName = element.name.toLowerCase();
      final businessName = switch (element) {
        ReviewProduct(businessName: final name) => name,
        ReviewService(businessName: final name) => name,
        _ => null,
      };
      final comment = element.reviewComment.toLowerCase();
      final queryLower = query.toLowerCase();

      return name.contains(queryLower) ||
          objectiveName.contains(queryLower) ||
          businessName?.contains(queryLower) == true ||
          comment.contains(queryLower);
    }).toList();

    return Result.success(reviews);
  }
}

@riverpod
ReviewRepository reviewRepository(ReviewRepositoryRef ref) {
  final authenticationLocalDatasource =
      ref.read(authenticationLocalDatasourceProvider);

  return ReviewRepositoryImpl(
    authenticationLocalDatasource: authenticationLocalDatasource,
  );
}
