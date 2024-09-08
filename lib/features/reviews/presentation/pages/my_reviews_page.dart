import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/core/utils/custom_break_points.dart';
import 'package:fin_dall/core/widgets/detail_scaffold.dart';
import 'package:fin_dall/features/reviews/presentation/controllers/my_review_selector_controller.dart';
import 'package:fin_dall/features/reviews/presentation/pages/my_review_detail_page.dart';
import 'package:fin_dall/features/reviews/presentation/widgets/review_list.dart';
import 'package:fin_dall/features/reviews/presentation/widgets/review_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class MyReviewsPage extends StatelessWidget {
  const MyReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return context.getResponsiveWidget(
      compact: const MyReviewsCompactPage(),
      medium: const MyReviewsMediumPage(),
      defaultWidget: const MyReviewsExpandedPage(),
    );
  }
}

class MyReviewsCompactPage extends StatelessWidget {
  const MyReviewsCompactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReviewListWithSearch(),
    );
  }
}

class MyReviewsMediumPage extends StatelessWidget {
  const MyReviewsMediumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DetailScaffold(
      body: ReviewListWithSearch(),
    );
  }
}

class MyReviewsExpandedPage extends StatelessWidget {
  const MyReviewsExpandedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 4,
          child: DetailScaffold(
            body: ReviewListWithSearch(),
          ),
        ),
        Expanded(
          flex: 6,
          child: Consumer(
            builder: (context, ref, child) {
              final reviewSelected =
                  ref.watch(myReviewSelectorControllerProvider);
              return reviewSelected == null
                  ? const SizedBox()
                  : MyReviewDetailExpandedPage(review: reviewSelected);
            },
          ),
        ),
      ],
    );
  }
}

class ReviewListWithSearch extends StatelessWidget {
  const ReviewListWithSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 2.0,
            horizontal: context.getResponsiveValue(
              compact: 5,
              medium: 5,
              defaultValue: 0,
            ),
          ),
          child: const ReviewSearchBar(),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 2.0,
              horizontal: context.getResponsiveValue(
                compact: 5,
                medium: 5,
                defaultValue: 0,
              ),
            ),
            child: Consumer(
              builder: (context, ref, _) {
                final selected = ref.watch(myReviewSelectorControllerProvider);
                return ReviewList(
                  selected: selected,
                  onReviewPressed: (review) {
                    ref
                        .read(myReviewSelectorControllerProvider.notifier)
                        .updateSelectedReview(review);

                    if (const MediumBreakPoint().end < context.width) {
                      context.router.push(MyReviewDetailRoute(review: review));
                    }
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
