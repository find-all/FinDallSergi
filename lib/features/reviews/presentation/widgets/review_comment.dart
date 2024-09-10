import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/custom_image.dart';
import 'package:fin_dall/core/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// A widget that displays a review comment with user information, rating, and date.
///
/// This widget is responsive and adapts to the screen size.
///
/// [date] is a [DateTime] that contains the date of the review
///
/// [comment] is a [String] that contains the comment of the review
///
/// [rate] is a [double] that contains the rating of the review
///
/// [userName] is a [String] that contains the name of the user
///
/// [userAvatarUrl] is a [String] that contains the url of the user's avatar. If it is null, it shows a default icon.
///
/// Example:
///
/// ```dart
///
/// ReviewComment(
///   date: DateTime.now(),
///   comment: 'This is a great review',
///   rate: 4.5,
///   userName: 'John Doe',
///   userAvatarUrl: 'https://example.com/avatar.jpg',
/// );
///
/// ```
///
class ReviewComment extends StatelessWidget {
  final DateTime date;

  final String comment;

  final double rate;

  final String userName;

  final String? userAvatarUrl;

  const ReviewComment({
    super.key,
    required this.date,
    required this.comment,
    required this.rate,
    required this.userName,
    this.userAvatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ReviewCommentScaffold(
      userImage: ReviewUserImage(
        url: userAvatarUrl,
      ),
      rating: ReviewRating(
        rate: rate,
      ),
      date: ReviewDateTime(
        date: date,
      ),
      comment: Text(
        comment,
        style: context.textTheme.bodyMedium?.copyWith(
          color: context.colorScheme.onPrimaryContainer,
          fontStyle: FontStyle.italic,
        ),
      ),
      userName: ReviewUserName(
        name: userName,
      ),
    );
  }
}

/// A widget that displays a loading review comment.
///
/// This widget is responsive and adapts to the screen size.
///
/// Example:
///
/// ```dart
///
/// ReviewCommentLoading();
///
/// ```
///
class ReviewCommentLoading extends StatelessWidget {
  const ReviewCommentLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const ReviewCommentScaffold(
      userImage: ReviewUserImageLoading(),
      rating: ReviewRatingLoading(),
      date: ReviewDateTimeLoading(),
      comment: ReviewCommentTextLoading(),
      userName: ReviewUserNameLoading(),
    );
  }
}

/// A widget that displays the user's avatar.
///
/// This widget is responsive and adapts to the screen size.
///
/// [url] is a [String] that contains the url of the user's avatar. If it is null, it shows a default icon.
///
/// Example:
///
/// ```dart
///
/// ReviewUserImage(
///   url: 'https://example.com/avatar.jpg',
/// );
///
/// ```
///
class ReviewUserImage extends StatelessWidget {
  final String? url;

  const ReviewUserImage({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCircleImage(
      image: url,
      radius: context.getResponsiveValue<double>(
        compact: 20,
        medium: 20,
        defaultValue: 40,
      ),
      emptyIcon: Icons.person,
    );
  }
}

/// A widget that displays a loading user's avatar.
///
/// This widget is responsive and adapts to the screen size.
///
/// Example:
///
/// ```dart
///
/// ReviewUserImageLoading();
///
/// ```
///
class ReviewUserImageLoading extends StatelessWidget {
  const ReviewUserImageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerCircle(
      radius: context.getResponsiveValue<double>(
        compact: 20,
        medium: 20,
        defaultValue: 40,
      ),
    );
  }
}

/// A widget that displays the user's name.
///
/// This widget is responsive and adapts to the screen size.
///
/// [name] is a [String] that contains the name of the user.
///
/// Example:
///
/// ```dart
///
/// ReviewUserName(
///  name: 'John Doe',
/// );
///
/// ```
///
class ReviewUserName extends StatelessWidget {
  final String name;
  const ReviewUserName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: context.getResponsiveValue<TextStyle?>(
        compact: context.textTheme.bodyMedium,
        medium: context.textTheme.bodyMedium,
        defaultValue: context.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w500,
        ),
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

/// A widget that displays a loading user's name.
///
/// This widget is responsive and adapts to the screen size.
///
/// Example:
///
/// ```dart
///
/// ReviewUserNameLoading();
///
/// ```
///
class ReviewUserNameLoading extends StatelessWidget {
  const ReviewUserNameLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerBox(
      width: 120,
      height: context.getResponsiveValue<double>(
        compact: 20,
        medium: 20,
        defaultValue: 25,
      ),
    );
  }
}

/// A widget that displays the date of the review.
///
/// This widget is responsive and adapts to the screen size.
///
/// [date] is a [DateTime] that contains the date of the review. Date is formatted as 'dd/MM/yyyy'.
///
/// Example:
///
/// ```dart
///
/// ReviewDateTime(
///  date: DateTime.now(),
/// );
///
/// ```
class ReviewDateTime extends StatelessWidget {
  final DateTime date;
  const ReviewDateTime({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat('dd/MM/yyyy', context.locale.languageCode).format(date),
      style: context.getResponsiveValue<TextStyle?>(
        compact: context.textTheme.bodySmall?.copyWith(
          color: context.colorScheme.onPrimaryContainer.withOpacity(0.7),
        ),
        defaultValue: context.textTheme.bodySmall?.copyWith(
          color: context.colorScheme.onPrimaryContainer.withOpacity(0.7),
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}

/// A widget that displays a loading date of the review.
///
/// This widget is responsive and adapts to the screen size.
///
/// Example:
///
/// ```dart
///
/// ReviewDateTimeLoading();
///
/// ```
///
class ReviewDateTimeLoading extends StatelessWidget {
  const ReviewDateTimeLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ShimmerBox(
      width: 80,
      height: context.getResponsiveValue<double>(
        compact: 20,
        medium: 18,
        defaultValue: 18,
      ),
    );
  }
}

/// A widget that displays the rating of the review.ç
///
/// This widget is responsive and adapts to the screen size.
///
/// [rate] is a [double] that contains the rating of the review.
///
/// Example:
///
/// ```dart
///
/// ReviewRating(
/// rate: 4.5,
/// );
///
/// ```
///
class ReviewRating extends StatelessWidget {
  final double rate;

  final bool _isCompact;

  final double size;

  const ReviewRating({super.key, required this.rate, this.size = 22})
      : _isCompact = false;

  const ReviewRating.compact({super.key, required this.rate, this.size = 22})
      : _isCompact = true;

  @override
  Widget build(BuildContext context) {
    if (_isCompact) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            rate.toString(),
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(
            Icons.star,
            color: Colors.amber,
            size: size,
          ),
        ],
      );
    }
    return RatingBar(
      filledIcon: Icons.star,
      emptyIcon: Icons.star_border,
      onRatingChanged: (p0) {},
      initialRating: rate,
      size: size,
    );
  }
}

/// A widget that displays a loading rating of the review.
///
/// This widget is responsive and adapts to the screen size.
///
/// Example:
///
/// ```dart
///
/// ReviewRatingLoading();
///
/// ```
///
class ReviewRatingLoading extends StatelessWidget {
  const ReviewRatingLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShimmerBox(
      width: 100,
      height: 20,
    );
  }
}

/// Review comment text is a widget that displays the user's comment.
///
/// This widget is responsive and adapts to the screen size.
///
/// [comment] is a [String] that contains the comment of the review.
///
/// Example:
///
/// ```dart
///
/// ReviewCommentText(
///  comment: 'This is a great review',
/// );
///
/// ```
///
class ReviewCommentText extends StatelessWidget {
  final String comment;
  const ReviewCommentText({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Text(
      comment,
      style: context.textTheme.bodyMedium?.copyWith(
        color: context.colorScheme.onPrimaryContainer,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}

/// A widget that displays a loading comment of the review.
///
/// This widget is responsive and adapts to the screen size.
///
/// Example:
///
/// ```dart
///
/// ReviewCommentLoading();
///
/// ```
///
class ReviewCommentTextLoading extends StatelessWidget {
  const ReviewCommentTextLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < 5; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: ShimmerBox(
              width: context.width,
              height: 18,
            ),
          ),
      ],
    );
  }
}

/// A widget that displays the user's avatar, rating, date, comment, and user name in a responsive way.
///
/// This widget is responsive and adapts to the screen size.
///
/// [userImage] is a [Widget] that contains the user's avatar.
///
/// [rating] is a [Widget] that contains the rating of the review.
///
/// [date] is a [Widget] that contains the date of the review.
///
/// [comment] is a [Widget] that contains the comment of the review.
///
/// [userName] is a [Widget] that contains the name of the user.
///
/// Example:
///
/// ```dart
///
/// ReviewCommentScaffold(
///  userImage: ReviewUserImage(
///   url: 'https://example.com/avatar.jpg',
///   ),
///   rating: ReviewRating(
///    rate: 4.5,
///  ),
/// date: ReviewDateTime(
///  date: DateTime.now(),
/// ),
/// comment: Text(
/// 'This is a great review',
/// style: context.textTheme.bodyMedium?.copyWith(
/// color: context.colorScheme.onPrimaryContainer,
/// fontStyle: FontStyle.italic,
///   ),
///   ),
///   userName: ReviewUserName(
///     name: 'John Doe',
///   ),
/// );
///
/// ```
///
/// For a loading version, just change the widgets to the loading versions.
///
/// Example:
///
/// ```dart
///
/// ReviewCommentScaffold(
/// userImage: ReviewUserImageLoading(),
/// rating: ReviewRatingLoading(),
/// date: ReviewDateTimeLoading(),
/// comment: ReviewCommentLoading(),
/// userName: ReviewUserNameLoading(),
/// );
///
///
class ReviewCommentScaffold extends StatelessWidget {
  final Widget userImage;

  final Widget rating;

  final Widget date;

  final Widget comment;

  final Widget userName;

  const ReviewCommentScaffold({
    super.key,
    required this.userImage,
    required this.rating,
    required this.date,
    required this.comment,
    required this.userName,
  });

  Widget _buildBackground(BuildContext context, List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.primaryContainer,
        borderRadius: context.getResponsiveValue<BorderRadius>(
          compact: const BorderRadius.all(Radius.circular(20)),
          medium: const BorderRadius.all(Radius.circular(20)),
          defaultValue: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final compact = _buildBackground(
      context,
      [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            userImage,
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  userName,
                  date,
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        comment,
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const Spacer(),
            rating,
          ],
        ),
      ],
    );

    return context.getResponsiveWidget(
      compact: compact,
      medium: compact,
      defaultWidget: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          userImage,
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: _buildBackground(
              context,
              [
                Row(
                  children: [
                    rating,
                    const Spacer(),
                    date,
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                comment,
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: userName,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
