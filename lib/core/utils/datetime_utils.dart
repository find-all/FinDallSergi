import 'package:fin_dall/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatetimeUtils {
  static String formatddMMyyyy(
      {required DateTime date, required BuildContext context}) {
    final locale = Localizations.localeOf(context);

    final format = DateFormat('dd/MM/yyyy', locale.languageCode);

    return format.format(date);
  }

  static String dayOfWeek({required int day, required BuildContext context}) {
    return switch (day) {
      1 => context.loc.monday,
      2 => context.loc.tuesday,
      3 => context.loc.wednesday,
      4 => context.loc.thursday,
      5 => context.loc.friday,
      6 => context.loc.saturday,
      _ => context.loc.sunday,
    };
  }
}
