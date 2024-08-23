import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pikpo_app/presentation/blocs/bloc/role_bloc.dart';
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
      () => context.read<RoleBloc>().add(
            FetchRoles(),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PikpoColors.kFFFFFF,
      body: SafeArea(
        child: BlocBuilder<RoleBloc, RoleState>(
          builder: (context, state) {
            return switch (state) {
              RoleLoading() ||
              RoleInitial() =>
                const Center(child: CircularProgressIndicator.adaptive()),
              RoleError() => Center(
                  child: Text(
                    'Error: ${state.failureMessage}',
                    style: PikpoFonts.defaultTextStyle.bold.fs14,
                  ),
                ),
              RoleLoaded() => Column(
                  children: [
                    const TopNavigationWidget(
                        imageUrl:
                            'https://images.unsplash.com/photo-1518609571773-39b7d303a87b?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        name: 'Sarah',
                        username: '@sarah.sports',
                        jobTitle: 'Personal Trainer'),
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
