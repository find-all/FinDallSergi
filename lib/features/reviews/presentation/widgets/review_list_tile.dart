import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/custom_image.dart';
import 'package:fin_dall/core/widgets/shimmer_box.dart';
import 'package:fin_dall/features/reviews/domain/entities/review.dart';
import 'package:fin_dall/features/reviews/presentation/widgets/review_comment.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// ReviewListTile is a widget that displays a review in a list.
///
/// It can be used in a list view or in a card.
///
/// It displays the avatar, the name of the reviewer, the name of the reviewed
/// business, the date of the review, the rating and the comment.
///
/// The [ReviewListTile] requires a [Review] object to display the review.
///
/// The [isSelected] parameter is used to highlight the review in the list.
///
/// The [onTap] parameter is a callback that is called when the review is tapped.
///

class ReviewListTile extends StatelessWidget {
  final Review review;

  final bool isSelected;

  final void Function()? onTap;

  const ReviewListTile({
    super.key,
    required this.review,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final title = review.name;

    final subtitle = switch (review) {
      ReviewProduct(businessName: final name) => name,
      ReviewService(businessName: final name) => name,
      _ => review.type,
    };

    final date = DateFormat('dd/MM/yyyy', context.locale.languageCode)
        .format(review.reviewDate);

    return ReviewListTileScaffold(
      avatar: CustomCircleImage(
        image: review.imageUrl,
        radius: 20,
      ),
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        subtitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      date: Text(
        date,
        style: context.textTheme.labelSmall?.copyWith(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.italic,
        ),
      ),
      rating: ReviewRating(
        rate: review.reviewRate,
        size: 15,
      ),
      comment: Text(
        review.reviewComment,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: context.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.italic,
        ),
      ),
      isSelected: isSelected,
      onTap: onTap,
    );
  }
}

class ReviewListTileLoading extends StatelessWidget {
  const ReviewListTileLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ReviewListTileScaffold(
      avatar: const ShimmerCircle(
        radius: 30,
      ),
      title: const Padding(
        padding: EdgeInsets.only(
          bottom: 2.0,
        ),
        child: ShimmerBox(
          width: 150,
          height: 22,
        ),
      ),
      subtitle: const ShimmerBox(
        width: 100,
        height: 18,
      ),
      date: const ShimmerBox(
        width: 50,
        height: 18,
      ),
      rating: const ShimmerBox(
        width: 100,
        height: 25,
      ),
      comment: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < 2; i++)
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShimmerBox(
                  width: double.infinity,
                  height: 18,
                ),
                SizedBox(
                  height: 2,
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class ReviewListTileScaffold extends StatelessWidget {
  final Widget avatar;

  final Widget title;

  final Widget subtitle;

  final Widget date;

  final Widget rating;

  final Widget comment;

  final bool isSelected;

  final void Function()? onTap;

  const ReviewListTileScaffold({
    super.key,
    required this.avatar,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.rating,
    required this.comment,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: isSelected
            ? context.colorScheme.primaryContainer
            : context.colorScheme.surface,
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(5),
        onTap: onTap,
        child: Column(
          children: [
            ListTile(
              leading: avatar,
              title: title,
              subtitle: subtitle,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
              child: comment,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Row(
                children: [
                  rating,
                  const Spacer(),
                  date,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
