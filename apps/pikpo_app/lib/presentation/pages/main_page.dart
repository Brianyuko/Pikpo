import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pikpo_app/presentation/blocs/event/event_bloc.dart';
import 'package:pikpo_app/presentation/blocs/user/user_bloc.dart';
import 'package:pikpo_assets/pikpo_colors.dart';
import 'package:pikpo_assets/pikpo_fonts.dart';
import 'package:pikpo_core/domain/entities/user_entity.dart';
import 'package:pikpo_ui_kit/card_event_widget.dart';
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
                                  onTap: () {
                                    context.read<EventBloc>().add(
                                          FetchEventsByIdUser(
                                            idUser: state.user.id,
                                          ),
                                        );
                                    _bottomSheetEvent(context, state.user);
                                  },
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

  Future<dynamic> _bottomSheetEvent(BuildContext context, UserEntity user) {
    return showModalBottomSheet(
        barrierColor: Colors.transparent,
        context: context,
        builder: (context) {
          return BottomSheetBaseWidget(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Text(
                    "${user.name.split(' ')[0]}'s Calendar",
                    style: PikpoFonts.defaultTextStyle.light.fs16.k4A4A4A,
                  ),
                ),
                const SizedBox(height: 16),
                BlocBuilder<EventBloc, EventState>(
                  builder: (context, state) {
                    return switch (state) {
                      EventLoading() || EventInitial() => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      EventError() => Center(
                          child: Text(
                            'Error: ${state.failureMessage}',
                            style: PikpoFonts.defaultTextStyle.bold.fs14,
                          ),
                        ),
                      EventLoaded() => Flexible(
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: state.events.length,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            itemBuilder: (context, index) {
                              final event = state.events[index];
                              return Padding(
                                padding: EdgeInsets.only(
                                  bottom:
                                      index == state.events.length - 1 ? 0 : 8,
                                ),
                                child: CardEventWidget(
                                  eventImageUrl: event.thumbnail,
                                  eventName: event.title,
                                  description: event.description,
                                  duration: event.duration,
                                  eventType: event.type,
                                  roleName: user.role,
                                  onTap: () {},
                                ),
                              );
                            },
                          ),
                        )
                    };
                  },
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () => context.pop(),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Cancel',
                      style: PikpoFonts.defaultTextStyle.medium.fs10.k4A4A4A,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).viewPadding.bottom,
                ),
              ],
            ),
          );
        });
  }
}
