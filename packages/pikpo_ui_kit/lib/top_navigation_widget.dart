import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pikpo_assets/pikpo_fonts.dart';
import 'package:pikpo_ui_kit/key_ui_kit.dart';

class TopNavigationWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String username;
  final String jobTitle;
  final BaseCacheManager? cacheManager;
  final Function()? onBack;
  final Function()? onMore;

  const TopNavigationWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.username,
    required this.jobTitle,
    this.cacheManager,
    this.onBack,
    this.onMore,
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
          const SizedBox(width: 2),
          ClipOval(
            key: KeyUiKit.circleProfileImage,
            child: CachedNetworkImage(
              cacheManager: cacheManager,
              imageUrl: imageUrl,
              placeholder: (context, url) =>
                  const CircularProgressIndicator.adaptive(),
              errorWidget: (context, url, error) => const Icon(
                key: KeyUiKit.imageError,
                Icons.error_outline_rounded,
                color: Colors.redAccent,
              ),
              fit: BoxFit.fitHeight,
              height: 48,
              width: 48,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText(
                  name,
                  style: PikpoFonts.defaultTextStyle.semiBold.fs12,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                AutoSizeText(
                  username,
                  style: PikpoFonts.defaultTextStyle.light.fs11,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                AutoSizeText(
                  jobTitle,
                  style: PikpoFonts.defaultTextStyle.light.fs11,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: 14),
          GestureDetector(
            key: KeyUiKit.onMore,
            onTap: onMore ?? () {},
            child: SvgPicture.asset(
              'icons/ic_more.svg',
              package: 'pikpo_assets',
            ),
          ),
        ],
      ),
    );
  }
}
