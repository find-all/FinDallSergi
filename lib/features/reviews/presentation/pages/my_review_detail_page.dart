import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/core/widgets/detail_scaffold.dart';
import 'package:fin_dall/features/reviews/domain/entities/review.dart';
import 'package:fin_dall/features/reviews/presentation/widgets/review_button.dart';
import 'package:fin_dall/features/reviews/presentation/widgets/review_comment.dart';
import 'package:fin_dall/features/reviews/presentation/widgets/review_image_gallery.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyReviewDetailPage extends StatelessWidget {
  final Review review;

  const MyReviewDetailPage({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return context.getResponsiveWidget(
      compact: MyReviewDetailCompactPage(review: review),
      medium: MyReviewDetailMediumPage(review: review),
      defaultWidget: MyReviewDetailExpandedPage(review: review),
    );
  }
}

class MyReviewDetailCompactPage extends StatelessWidget {
  final Review review;

  const MyReviewDetailCompactPage({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyReviewDetailScaffold(
        review: review,
        onBackPressed: () => context.router.maybePop(),
        onEditPressed: () {},
      ),
    );
  }
}

class MyReviewDetailMediumPage extends StatelessWidget {
  final Review review;

  const MyReviewDetailMediumPage({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      body: MyReviewDetailScaffold(
        review: review,
        onBackPressed: () => context.router.maybePop(),
        onEditPressed: () {},
      ),
    );
  }
}

class MyReviewDetailExpandedPage extends StatelessWidget {
  final Review review;

  const MyReviewDetailExpandedPage({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return DetailScaffold(
      body: MyReviewDetailScaffold(
        review: review,
        onEditPressed: () {},
      ),
    );
  }
}

class MyReviewDetailScaffold extends StatelessWidget {
  final Review review;

  final void Function()? onBackPressed;

  final void Function()? onEditPressed;

  const MyReviewDetailScaffold({
    super.key,
    this.onBackPressed,
    this.onEditPressed,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    final title = switch (review) {
      ReviewProduct(name: final name) => name,
      ReviewService(name: final name) => name,
      _ => review.name,
    };

    final subtitle = switch (review) {
      ReviewProduct(businessName: final name) => name,
      ReviewService(businessName: final name) => name,
      _ => review.type,
    };

    final showButtonLabel = switch (review) {
      ReviewProduct() => context.loc.showProduct,
      ReviewService() => context.loc.showService,
      _ => context.loc.showBusiness,
    };

    final showButtonOnPressed = switch (review) {
      ReviewProduct() => () => context.router.push(const ProductRoute()),
      ReviewService() => () => context.router.push(const ServiceRoute()),
      _ => () => context.router.push(const BusinessRoute()),
    };

    return Column(
      children: [
        if (onBackPressed != null)
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: IconButton.filledTonal(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: onBackPressed,
              ),
            ),
          ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(title),
                  subtitle: Text(subtitle),
                ),
                const ReviewImageGallery(
                  images: [
                    'https://picsum.photos/200/300',
                    'https://picsum.photos/200/300',
                    'https://picsum.photos/200/300',
                    'https://picsum.photos/200/300',
                    'https://picsum.photos/200/300',
                    'https://picsum.photos/200/300',
                    'https://picsum.photos/200/300',
                    'https://picsum.photos/200/300',
                    'https://picsum.photos/200/300',
                    'https://picsum.photos/200/300',
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      ReviewComment(
                        date: review.reviewDate,
                        comment: review.reviewComment,
                        rate: review.rate,
                        userName: review.userName,
                        userAvatarUrl: review.userImageUrl,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (onEditPressed != null)
                        SizedBox(
                          width: double.infinity,
                          child: ReviewButton(
                            onPressed: onEditPressed,
                            text: context.loc.update,
                          ),
                        ),
                      Row(
                        children: [
                          Expanded(
                            child: ReviewButton(
                              onPressed: showButtonOnPressed,
                              text: showButtonLabel,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: ReviewButton(
                              onPressed: () {},
                              text: context.loc.showMoreReviews,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
