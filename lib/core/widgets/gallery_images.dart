import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fin_dall/core/widgets/shimmer_box.dart';
import 'package:flutter/material.dart';

class GalleryImages extends StatelessWidget {
  final double initialBlankWidth;

  final List<String>? images;

  final double width;

  final double height;

  final bool _isLoading;

  const GalleryImages.loaded({
    super.key,
    required this.images,
    this.initialBlankWidth = 0,
    this.width = 200,
    this.height = 200,
  }) : _isLoading = false;

  const GalleryImages.loading({
    super.key,
    this.initialBlankWidth = 0,
    this.height = 200,
    this.width = 200,
  })  : images = null,
        _isLoading = true;

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return GalleryImagesLoading(
        initialBlankWidth: initialBlankWidth,
        width: width,
        height: height,
      );
    }

    if (images!.isEmpty) {
      return const SizedBox.shrink();
    }

    return GalleryImagesLoaded(
      images: images,
      width: width,
      height: height,
      initialBlankWidth: initialBlankWidth,
    );
  }
}

class GalleryImagesLoaded extends StatelessWidget {
  final List<String>? images;

  final double width;

  final double height;

  final double initialBlankWidth;

  const GalleryImagesLoaded({
    super.key,
    this.images,
    this.width = 200,
    this.height = 200,
    required this.initialBlankWidth,
  });

  @override
  Widget build(BuildContext context) {
    if (images == null || images!.isEmpty) {
      return const SizedBox();
    }

    print(width);

    return SizedBox(
      height: height,
      child: ListView.builder(
        itemCount: images!.length + 1,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          if (index == 0) {
            return SizedBox(
              width: initialBlankWidth,
            );
          }
          final image = images![index - 1];
          return GalleryImageTile.loaded(
            imageUrl: image,
            width: width,
            height: height,
            detailItemBuilder: GalleryImageTileDetail(
              images: images!,
              initialPosition: index - 1,
            ),
          );
        },
      ),
    );
  }
}

class GalleryImagesLoading extends StatelessWidget {
  final double initialBlankWidth;
  final double width;
  final double height;

  const GalleryImagesLoading({
    super.key,
    required this.initialBlankWidth,
    this.width = 200,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          if (index == 0) {
            return SizedBox(
              width: initialBlankWidth,
            );
          }
          return GalleryImageTile.loading(
            height: height,
            width: width,
          );
        },
      ),
    );
  }
}

class GalleryImageTile extends StatelessWidget {
  final String? imageUrl;

  final Widget? detailItemBuilder;

  final bool _isLoading;

  final double width;

  final double height;

  const GalleryImageTile.loaded({
    super.key,
    required this.imageUrl,
    this.detailItemBuilder,
    this.width = 200,
    this.height = 200,
  }) : _isLoading = false;

  const GalleryImageTile.loading({
    super.key,
    this.width = 200,
    this.height = 200,
  })  : _isLoading = true,
        detailItemBuilder = null,
        imageUrl = null;

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Card(
        child: ShimmerBox(
          width: width,
          height: height,
          radius: 10,
        ),
      );
    }

    if (imageUrl!.isEmpty) {
      return const SizedBox.shrink();
    }

    print(width);

    return CachedNetworkImage(
      imageUrl: imageUrl!,
      height: width,
      width: height,
      placeholder: (context, url) => Card(
        child: ShimmerBox(
          width: width,
          height: height,
          radius: 10,
        ),
      ),
      errorWidget: (context, url, error) => const SizedBox.shrink(),
      imageBuilder: (context, imageProvider) => InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: detailItemBuilder == null
            ? null
            : () => showDialog(
                  context: context,
                  barrierColor: Colors.black.withOpacity(0.9),
                  builder: (context) => detailItemBuilder!,
                ),
        child: Card(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GalleryImageTileDetail extends StatelessWidget {
  final List<String> images;

  final int initialPosition;

  const GalleryImageTileDetail({
    super.key,
    required this.images,
    required this.initialPosition,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          Center(
            child: CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.sizeOf(context).width * 0.8,
                initialPage: initialPosition,
                enableInfiniteScroll: false,
                scrollPhysics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                enlargeCenterPage: true,
              ),
              items: images
                  .map(
                    (i) => GalleryImageTile.loaded(
                      imageUrl: i,
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      height: MediaQuery.sizeOf(context).width * 0.8,
                    ),
                  )
                  .toList(),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: context.router.pop,
            ),
          ),
        ],
      ),
    );
  }
}
