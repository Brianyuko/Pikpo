import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pikpo_assets/pikpo_colors.dart';
import 'package:pikpo_assets/pikpo_fonts.dart';
import 'package:pikpo_ui_kit/key_ui_kit.dart';

class CardEventWidget extends StatelessWidget {
  final String eventImageUrl;
  final String eventName;
  final String roleName;
  final String eventType;
  final num duration;
  final String description;
  final Function() onTap;
  final BaseCacheManager? cacheManager;
  const CardEventWidget({
    super.key,
    required this.eventImageUrl,
    required this.eventName,
    required this.roleName,
    required this.eventType,
    required this.duration,
    required this.description,
    required this.onTap,
    this.cacheManager,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      key: KeyUiKit.onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          color: Colors.transparent,
          border: Border(
            bottom: BorderSide(
              color: PikpoColors.k4A4A4A,
              width: 0.5,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipOval(
                  child: CachedNetworkImage(
                    cacheManager: cacheManager,
                    imageUrl: eventImageUrl,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator.adaptive(),
                    errorWidget: (context, url, error) => const Icon(
                      key: KeyUiKit.imageError,
                      Icons.error_outline_rounded,
                      color: Colors.redAccent,
                    ),
                    fit: BoxFit.cover,
                    height: 48,
                    width: 48,
                  ),
                ),
                const SizedBox(width: 18),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        eventName,
                        style: PikpoFonts.defaultTextStyle.medium.k4A4A4A.fs10,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Flexible(
                            child: AutoSizeText(
                              roleName,
                              style: PikpoFonts
                                  .defaultTextStyle.regular.k0A0A0A.fs11,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: eventType == 'Call'
                                  ? PikpoColors.kCAB8E3
                                  : PikpoColors.kBCDCDA,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Visibility(
                                  visible: eventType == 'Call',
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      right: 4,
                                    ),
                                    child: SvgPicture.asset(
                                      'icons/ic_call.svg',
                                      height: 10,
                                      width: 10,
                                      package: 'pikpo_assets',
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: AutoSizeText(
                                    eventType,
                                    style: PikpoFonts
                                        .defaultTextStyle.light.k000000.fs9,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 18),
                Flexible(
                  child: Container(
                    alignment: Alignment.centerRight,
                    decoration: BoxDecoration(
                      color: PikpoColors.k296152,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Center(
                      child: AutoSizeText(
                        '${(duration / 60).toStringAsFixed(0)} Mins',
                        style:
                            PikpoFonts.defaultTextStyle.semiBold.fs12.kF8F8F8,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 48 + 18),
                Expanded(
                  child: AutoSizeText(
                    description,
                    style: PikpoFonts.defaultTextStyle.medium.k4A4A4A.fs10,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 18),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
