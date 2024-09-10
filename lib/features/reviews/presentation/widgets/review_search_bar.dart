import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/router/app_router.dart';
import 'package:fin_dall/core/widgets/custom_search_bar.dart';
import 'package:fin_dall/features/reviews/domain/entities/review.dart';
import 'package:fin_dall/features/reviews/presentation/controllers/my_review_selector_controller.dart';
import 'package:fin_dall/features/reviews/presentation/controllers/user_reviews_search_fetch_provider.dart';
import 'package:fin_dall/features/reviews/presentation/widgets/review_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReviewSearchBar extends ConsumerWidget {
  const ReviewSearchBar({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final fetch = ref.watch(userReviewsSearchFetchProvider);
    return CustomSearchBar<Review>(
      fetch: fetch,
      itemBuilder: (item, onPressed) {
        final onItemPressed = context.getResponsiveValue(compact: () {
          onPressed();
          context.router.push(MyReviewDetailRoute(review: item));
        }, medium: () {
          onPressed();
          context.router.push(MyReviewDetailRoute(review: item));
        }, defaultValue: () {
          onPressed();
          ref
              .read(myReviewSelectorControllerProvider.notifier)
              .updateSelectedReview(item);
        });

        final itemTileWidget = ReviewListTile(
          review: item,
          onTap: onItemPressed,
        );

        final itemWidget = context.getResponsiveWidget(
          compact: Column(
            children: [
              itemTileWidget,
              Divider(
                color: context.colorScheme.onSurface.withOpacity(0.2),
                height: 1,
                endIndent: 10,
                indent: 10,
              ),
            ],
          ),
          defaultWidget: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5),
            child: itemTileWidget,
          ),
        );

        return itemWidget;
      },
      loadingTile: Builder(
        builder: (context) {
          const itemTile = ReviewListTileLoading();

          final itemWidget = context.getResponsiveWidget(
            compact: Column(
              children: [
                itemTile,
                Divider(
                  color: context.colorScheme.onSurface.withOpacity(0.2),
                  height: 1,
                  endIndent: 10,
                  indent: 10,
                ),
              ],
            ),
            defaultWidget: const Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 5),
              child: itemTile,
            ),
          );

          return itemWidget;
        },
      ),
      barBackgroundColor:
          WidgetStateProperty.all(context.colorScheme.primaryContainer),
      barShape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      barElevation: WidgetStateProperty.all(0),
      dividerColor: Colors.transparent,
      viewBackgroundColor: context.getResponsiveValue(
        compact: context.colorScheme.surface,
        defaultValue: context.colorScheme.primaryContainer,
      ),
      viewShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      barLeading: context.getResponsiveValue(
        compact: SizedBox(
          width: 20,
          child: GestureDetector(
            onTap: () => context.router.maybePop(),
            child: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
        medium: SizedBox(
          width: 20,
          child: GestureDetector(
            onTap: () => context.router.maybePop(),
            child: const Icon(
              Icons.arrow_back_ios,
            ),
          ),
        ),
        defaultValue: null,
      ),
      isFullScreen: context.getResponsiveValue(
        compact: true,
        defaultValue: false,
      ),
    );
  }
}
