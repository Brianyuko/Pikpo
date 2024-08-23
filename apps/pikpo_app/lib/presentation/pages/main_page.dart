import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pikpo_app/presentation/blocs/user/user_bloc.dart';
import 'package:pikpo_assets/pikpo_colors.dart';
import 'package:pikpo_assets/pikpo_fonts.dart';
import 'package:pikpo_ui_kit/bottom_sheet_base_widget.dart';
import 'package:pikpo_ui_kit/top_navigation_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context.read<UserBloc>().add(
            FetchUserByIdRecord(userIdRecord: 'recdpguPkKNgOTmDn'),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PikpoColors.kFFFFFF,
      body: SafeArea(
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return switch (state) {
              UserLoading() ||
              UserInitial() =>
                const Center(child: CircularProgressIndicator.adaptive()),
              UserError() => Center(
                  child: Text(
                    'Error: ${state.failureMessage}',
                    style: PikpoFonts.defaultTextStyle.bold.fs14,
                  ),
                ),
              UserLoaded() => Column(
                  children: [
                    TopNavigationWidget(
                      imageUrl: state.user.imageProfile,
                      name: state.user.name,
                      username: "@${state.user.username}",
                      jobTitle: state.user.currentTitle,
                    ),
                    const Spacer(),
                    BottomSheetBaseWidget(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              maxLines: 4,
                              decoration: InputDecoration(
                                hintText: 'Write a message',
                                border: InputBorder.none,
                                fillColor: PikpoColors.kF5F5F5,
                                hintStyle: PikpoFonts
                                    .defaultTextStyle.light.fs14.kBDDBDBD,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                    'icons/ic_calendar.svg',
                                    package: 'pikpo_assets',
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: SvgPicture.asset(
                                    'icons/ic_add_circle.svg',
                                    package: 'pikpo_assets',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
            };
          },
        ),
      ),
    );
  }
}
