import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/gallery_images.dart';
import 'package:flutter/material.dart';

class ReviewImageGallery extends StatelessWidget {
  final List<String> images;
  const ReviewImageGallery({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return const SizedBox.shrink();
    }

    return GalleryImages.loaded(
      images: images,
      height: context.height * 0.3,
      width: context.width,
      initialBlankWidth: 0,
    );
  }
}
