import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pikpo_assets/pikpo_colors.dart';
import 'package:pikpo_assets/pikpo_fonts.dart';

class CardInfoRoundedWidget extends StatelessWidget {
  final String assetName;
  final String title;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsets? padding;
  const CardInfoRoundedWidget({
    super.key,
    required this.assetName,
    required this.title,
    this.color,
    this.borderRadius,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: color ?? PikpoColors.kF5F5F5,
          borderRadius: borderRadius ?? BorderRadius.circular(20),
        ),
        padding: padding ??
            const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 16,
            ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              "icons/$assetName",
              height: 24,
              width: 24,
              fit: BoxFit.contain,
              package: 'pikpo_assets',
            ),
            const SizedBox(height: 4),
            AutoSizeText(
              title,
              textAlign: TextAlign.center,
              style: PikpoFonts.defaultTextStyle.regular.fs11.k4A4A4A,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
