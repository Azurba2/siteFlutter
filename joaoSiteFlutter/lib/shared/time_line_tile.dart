import 'package:flutter/material.dart';
import 'package:joao_site_flutter/consts/colors.dart';
import 'package:timeline_tile/timeline_tile.dart';

// ignore: must_be_immutable
class TimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  IconData? iconStyle;
  final Widget child;

  TimeLineTile(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast,
      this.iconStyle,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: TimelineTile(
            axis: TimelineAxis.vertical,
            isFirst: isFirst,
            isLast: isLast,
            beforeLineStyle: LineStyle(
                color: isPast ? Colors.grey : ColorPalette.regularGreen),
            indicatorStyle: IndicatorStyle(
              color: isPast ? Colors.grey : ColorPalette.regularGreen,
              iconStyle:
                  iconStyle != null ? IconStyle(iconData: iconStyle!) : null,
            ),
            endChild: child));
  }
}
