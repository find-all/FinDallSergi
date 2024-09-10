import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/features/reviews/domain/entities/review.dart';
import 'package:fin_dall/features/reviews/presentation/widgets/review_button.dart';
import 'package:fin_dall/features/reviews/presentation/widgets/review_comment.dart';
import 'package:fin_dall/features/reviews/presentation/widgets/review_image_gallery.dart';
import 'package:fin_dall/features/reviews/presentation/widgets/review_of.dart';
import 'package:flutter/material.dart';

class ReviewDetail extends StatelessWidget {
  final Review review;
  const ReviewDetail({super.key, required this.review});
  const ReviewDetail.card({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        20,
      ),
      child: Column(
        children: [
          ReviewOf(
            name: review.name,
            type: 'Business',
            rate: review.rate,
          ),
          SizedBox(
            height: context.height * 0.05,
          ),
          ReviewComment(
            date: review.reviewDate,
            comment: review.reviewComment,
            rate: review.rate,
            userName: review.userName,
            userAvatarUrl: review.userImageUrl,
          ),
          SizedBox(
            height: context.height * 0.01,
          ),
          const ReviewImageGallery(
            images: [
              'https://picsum.photos/200/300',
              'https://picsum.photos/200/300',
              'https://picsum.photos/200/300',
              'https://picsum.photos/200/300',
              'https://picsum.photos/200/300',
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: ReviewButton(
              onPressed: () {},
              text: 'Edit',
            ),
          ),
          Row(
            children: [
              Expanded(
                child: ReviewButton(onPressed: () {}, text: 'Show business'),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ReviewButton(onPressed: () {}, text: 'Show user'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ReviewDetailLoading extends StatelessWidget {
  const ReviewDetailLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ReviewDetailScaffold extends StatelessWidget {
  const ReviewDetailScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
