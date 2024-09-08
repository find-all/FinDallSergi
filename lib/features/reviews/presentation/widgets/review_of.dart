import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/custom_image.dart';
import 'package:fin_dall/core/widgets/shimmer_box.dart';
import 'package:fin_dall/features/reviews/presentation/widgets/review_comment.dart';
import 'package:flutter/material.dart';

class ReviewOf extends StatelessWidget {
  final String name;

  final String type;

  final double rate;

  final String? imageUrl;

  const ReviewOf({
    super.key,
    required this.name,
    required this.type,
    required this.rate,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ReviewOfScaffold(
      image: CustomCircleImage(
        image: imageUrl,
        emptyIcon: Icons.business,
        radius: context.getResponsiveValue(
          compact: 60,
          medium: 60,
          defaultValue: 80,
        ),
      ),
      name: Text(
        name,
        style: context.textTheme.titleLarge,
        textAlign: TextAlign.center,
      ),
      type: Text(
        type,
        style: context.textTheme.bodyLarge,
        textAlign: TextAlign.center,
      ),
      rate: ReviewRating.compact(rate: rate),
    );
  }
}

class ReviewOfLoading extends StatelessWidget {
  const ReviewOfLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ReviewOfScaffold(
      image: ShimmerCircle(
        radius: context.getResponsiveValue(
          compact: context.height * 0.1,
          medium: context.height * 0.1,
          defaultValue: context.height * 0.8,
        ),
      ),
      name: const ShimmerBox(
        width: 150,
        height: 20,
      ),
      type: const Padding(
        padding: EdgeInsets.symmetric(vertical: 2),
        child: ShimmerBox(
          width: 100,
          height: 20,
        ),
      ),
      rate: const ShimmerBox(
        width: 50,
        height: 20,
      ),
    );
  }
}

class ReviewOfScaffold extends StatelessWidget {
  final Widget image;

  final Widget name;

  final Widget type;

  final Widget rate;

  const ReviewOfScaffold({
    super.key,
    required this.image,
    required this.name,
    required this.type,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return context.getResponsiveWidget(
      compact: Column(
        children: [
          image,
          const SizedBox(
            height: 20,
          ),
          name,
          type,
          const SizedBox(
            height: 10,
          ),
          rate,
        ],
      ),
      medium: Column(
        children: [
          image,
          const SizedBox(
            height: 20,
          ),
          name,
          type,
          const SizedBox(
            height: 10,
          ),
          rate,
        ],
      ),
      defaultWidget: Row(
        children: [
          image,
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              children: [
                name,
                type,
                const SizedBox(
                  height: 10,
                ),
                rate,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
