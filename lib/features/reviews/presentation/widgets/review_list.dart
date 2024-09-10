import 'package:fin_dall/core/widgets/paging_list/paging_list.dart';
import 'package:fin_dall/features/reviews/domain/entities/review.dart';
import 'package:fin_dall/features/reviews/presentation/controllers/user_reviews_fetch_provider.dart';
import 'package:fin_dall/features/reviews/presentation/widgets/review_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ReviewList extends ConsumerWidget {
  final Review? selected;

  final void Function(Review review)? onReviewPressed;

  const ReviewList({
    super.key,
    this.onReviewPressed,
    this.selected,
  });

  @override
  Widget build(BuildContext context, ref) {
    final fetch = ref.watch(userReviewsFetchProvider);

    return PagingList(
      loadingTile: const ReviewListTileLoading(),
      itemBuilder: (item) => ReviewListTile(
        review: item,
        onTap: onReviewPressed != null ? () => onReviewPressed!(item) : null,
        isSelected: selected != null && selected!.id == item.id,
      ),
      fetch: fetch,
      separatorBuilder: (context, index) => const Divider(
        height: 1,
        thickness: 0.8,
        indent: 8,
        endIndent: 8,
      ),
      shrinkWrap: true,
    );
  }
}
