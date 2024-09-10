import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

sealed class CustomBreakPoint {
  final String name;

  final double start;

  final double end;

  const CustomBreakPoint({
    required this.name,
    required this.start,
    required this.end,
  });

  Breakpoint get toBreakPoint => Breakpoint(
        start: start,
        end: end,
        name: name,
      );
}

final class CompactBreakPoint extends CustomBreakPoint {
  const CompactBreakPoint()
      : super(
          name: 'COMPACT',
          start: 0,
          end: 599,
        );
}

final class MediumBreakPoint extends CustomBreakPoint {
  const MediumBreakPoint()
      : super(
          name: 'MEDIUM',
          start: 600,
          end: 839,
        );
}

final class ExpandedBreakPoint extends CustomBreakPoint {
  const ExpandedBreakPoint()
      : super(
          name: 'EXPANDED',
          start: 840,
          end: 1199,
        );
}

final class LargeBreakPoint extends CustomBreakPoint {
  const LargeBreakPoint()
      : super(
          name: 'LARGE',
          start: 1200,
          end: 1599,
        );
}

final class ExtraLargeBreakPoint extends CustomBreakPoint {
  const ExtraLargeBreakPoint()
      : super(
          name: 'EXTRA_LARGE',
          start: 1600,
          end: double.infinity,
        );
}

CustomBreakPoint getBreakPoint(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width.round();

  return switch (width) {
    _
        when width >= const CompactBreakPoint().start &&
            width <= const CompactBreakPoint().end =>
      const CompactBreakPoint(),
    _
        when width >= const MediumBreakPoint().start &&
            width <= const MediumBreakPoint().end =>
      const MediumBreakPoint(),
    _
        when width >= const ExpandedBreakPoint().start &&
            width <= const ExpandedBreakPoint().end =>
      const ExpandedBreakPoint(),
    _
        when width >= const LargeBreakPoint().start &&
            width <= const LargeBreakPoint().end =>
      const LargeBreakPoint(),
    _ => const ExtraLargeBreakPoint(),
  };
}

bool isHigherThanBreakPoint(BuildContext context, CustomBreakPoint breakPoint) {
  final width = MediaQuery.sizeOf(context).width.round();

  return width > breakPoint.end;
}
