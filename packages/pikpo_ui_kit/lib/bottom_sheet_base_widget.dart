import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pikpo_assets/pikpo_colors.dart';

class BottomSheetBaseWidget extends StatelessWidget {
  final Widget child;
  final double? height;
  final List<BoxShadow>? shadows;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;

  const BottomSheetBaseWidget({
    super.key,
    required this.child,
    this.height,
    this.shadows,
    this.color,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: shadows ??
            [
              BoxShadow(
                color: PikpoColors.k0A0A0A.withOpacity(0.25),
                blurRadius: 10,
                offset: const Offset(0, -1),
              ),
            ],
        color: color ?? PikpoColors.kF8F8F8,
        borderRadius: borderRadius ??
            const BorderRadius.vertical(
              top: Radius.circular(24),
            ),
      ),
      child: child,
    );
  }
}
