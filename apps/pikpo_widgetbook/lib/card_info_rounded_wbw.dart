import 'package:flutter/material.dart';
import 'package:pikpo_assets/pikpo_colors.dart';
import 'package:pikpo_ui_kit/card_info_rounded_widget.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'All', type: CardInfoRoundedWidget)
Widget allCase(BuildContext context) {
  return const Scaffold(
    backgroundColor: PikpoColors.kFFFFFF,
    body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardInfoRoundedWidget(
                  assetName: 'ic_in_person.svg',
                  title: 'In-Person',
                ),
                SizedBox(width: 40),
                CardInfoRoundedWidget(
                  assetName: 'ic_clock.svg',
                  title: '120 mins',
                ),
                SizedBox(width: 40),
                CardInfoRoundedWidget(
                  assetName: 'ic_multiple_session.svg',
                  title: 'Multiple',
                ),
              ],
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardInfoRoundedWidget(
                  assetName: 'ic_call.svg',
                  title: 'Call',
                ),
                SizedBox(width: 40),
                CardInfoRoundedWidget(
                  assetName: 'ic_clock.svg',
                  title: '30 mins',
                ),
                SizedBox(width: 40),
                CardInfoRoundedWidget(
                  assetName: 'ic_single_session.svg',
                  title: 'Session',
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

@widgetbook.UseCase(name: 'In Person', type: CardInfoRoundedWidget)
Widget inPerson(BuildContext context) {
  return const Scaffold(
    body: SafeArea(
      child: Row(
        children: [
          CardInfoRoundedWidget(
            assetName: 'ic_in_person.svg',
            title: 'In-Person',
          ),
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(name: '120 Mins', type: CardInfoRoundedWidget)
Widget time120(BuildContext context) {
  return const Scaffold(
    body: SafeArea(
      child: Row(
        children: [
          CardInfoRoundedWidget(
            assetName: 'ic_clock.svg',
            title: '120 Mins',
          ),
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(name: 'Multiple Session', type: CardInfoRoundedWidget)
Widget multipleSession(BuildContext context) {
  return const Scaffold(
    body: SafeArea(
      child: Row(
        children: [
          CardInfoRoundedWidget(
            assetName: 'ic_multiple_session.svg',
            title: 'Multiple',
          ),
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(name: 'Call', type: CardInfoRoundedWidget)
Widget call(BuildContext context) {
  return const Scaffold(
    body: SafeArea(
      child: Row(
        children: [
          CardInfoRoundedWidget(
            assetName: 'ic_call.svg',
            title: 'Call',
          ),
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(name: '30 Mins', type: CardInfoRoundedWidget)
Widget time30(BuildContext context) {
  return const Scaffold(
    body: SafeArea(
      child: Row(
        children: [
          CardInfoRoundedWidget(
            assetName: 'ic_clock.svg',
            title: '30 Mins',
          ),
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(name: 'Single Session', type: CardInfoRoundedWidget)
Widget singleSession(BuildContext context) {
  return const Scaffold(
    body: SafeArea(
      child: Row(
        children: [
          CardInfoRoundedWidget(
            assetName: 'ic_single_session.svg',
            title: 'Session',
          ),
        ],
      ),
    ),
  );
}
