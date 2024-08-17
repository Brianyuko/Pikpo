import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pikpo_assets/pikpo_fonts.dart';
import 'package:pikpo_ui_kit/key_ui_kit.dart';

class TopNavigationTitleWidget extends StatelessWidget {
  final String title;
  final Function()? onBack;
  const TopNavigationTitleWidget({
    super.key,
    required this.title,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            key: KeyUiKit.onBack,
            onTap: onBack ?? () {},
            child: SvgPicture.asset(
              'icons/ic_back.svg',
              package: 'pikpo_assets',
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: AutoSizeText(
              title,
              style: PikpoFonts.defaultTextStyle.bold.fs14,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
