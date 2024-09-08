// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:fin_dall/core/widgets/custom_bottom_sheet.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<XFile?> showCustomImagePicker({
  required BuildContext context,
  required Widget Function(ImageProvider<Object> imageProvider)
      previewImageBuilder,
}) async {
  final ImagePicker imagePicker = ImagePicker();

  final resultMode = await showImagePickerModeSelector(context);

  if (resultMode == null) {
    return null;
  }

  late XFile? pickedFile;

  switch (resultMode) {
    case ImagePickerMode.cameraImage:
      pickedFile = await imagePicker.pickImage(source: ImageSource.camera);

      break;
    case ImagePickerMode.galleryImage:
      pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);

      break;
  }

  if (pickedFile == null) {
    return null;
  }

  return await showSelectedImage(
    context: context,
    image: pickedFile,
    imageBuilder: previewImageBuilder,
  );
}

Future<XFile?> showSelectedImage({
  required BuildContext context,
  required XFile image,
  required Widget Function(ImageProvider<Object> imageProvider) imageBuilder,
}) async {
  return await showCustomBottomSheet<XFile?>(
    context: context,
    title: context.loc.newImage,
    body: Center(
      child: imageBuilder(
        kIsWeb
            ? Image.network(
                image.path,
              ).image
            : FileImage(
                File(
                  image.path,
                ),
              ),
      ),
    ),
    cancelLabel: context.loc.dismiss,
    onCancel: () {
      AutoRouter.of(context).maybePop();
    },
    acceptLabel: context.loc.select,
    onAccept: () {
      AutoRouter.of(context).maybePop(image);
    },
  );
}

enum ImagePickerMode {
  cameraImage,
  galleryImage,
}

Future<ImagePickerMode?> showImagePickerModeSelector(
    BuildContext context) async {
  return await showCustomBottomSheet<ImagePickerMode?>(
    context: context,
    title: context.loc.selectImageFromSource,
    body: Column(
      children: [
        ListTile(
          title: Text(context.loc.selectImageFromCamera),
          leading: const Icon(Icons.camera_alt),
          onTap: () {
            AutoRouter.of(context).maybePop(ImagePickerMode.cameraImage);
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          title: Text(context.loc.selectImageFromGallery),
          leading: const Icon(Icons.photo),
          onTap: () {
            AutoRouter.of(context).maybePop(ImagePickerMode.galleryImage);
          },
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ],
    ),
    cancelLabel: context.loc.cancel,
    onCancel: () {
      AutoRouter.of(context).maybePop();
    },
  );
}
