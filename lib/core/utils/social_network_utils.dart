import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class SocialNetworkUtils {
  static String getNameFromUrl(
      {required String url, required BuildContext context}) {
    switch (url) {
      case _ when url.contains('facebook'):
        return context.loc.facebook;
      case _ when url.contains('instagram'):
        return context.loc.instagram;
      case _ when url.contains('twitter'):
        return context.loc.twitter;
      case _ when url.contains('youtube'):
        return context.loc.youtube;
      case _ when url.contains('linkedin'):
        return context.loc.linkedin;
      case _ when url.contains('pinterest'):
        return context.loc.pinterest;
      case _ when url.contains('tiktok'):
        return context.loc.tiktok;
      default:
        return '';
    }
  }

  static IconData getIconFromUrl(
      {required String url, required BuildContext context}) {
    switch (url) {
      case _ when url.contains('facebook'):
        return Icons.facebook;
      case _ when url.contains('instagram'):
        return Icons.language;
      case _ when url.contains('twitter'):
        return Icons.language;
      case _ when url.contains('youtube'):
        return Icons.youtube_searched_for;
      case _ when url.contains('linkedin'):
        return Icons.language;
      case _ when url.contains('pinterest'):
        return Icons.language;
      case _ when url.contains('tiktok'):
        return Icons.tiktok;
      default:
        return Icons.language;
    }
  }
}
