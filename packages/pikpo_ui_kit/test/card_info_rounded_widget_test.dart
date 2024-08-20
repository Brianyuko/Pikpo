import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pikpo_ui_kit/card_info_rounded_widget.dart';

void main() {
  group('Verify Card Info Rounded', () {
    testWidgets('should display card info rounded',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        _makeTestableWidget(
          body: const CardInfoRoundedWidget(
            assetName: 'ic_in_person.svg',
            title: 'In-Person',
          ),
        ),
      );
      final findCardInfoRounded = find.byType(CardInfoRoundedWidget);
      final findSvg = find.byType(SvgPicture);
      final findTitle = find.text('In-Person');
      expect(findCardInfoRounded, findsOneWidget);
      expect(findSvg, findsOneWidget);
      expect(findTitle, findsOneWidget);
    });
  });
}

Widget _makeTestableWidget({required Widget body}) {
  return MaterialApp(
    home: Scaffold(
      body: Row(
        children: [
          body,
        ],
      ),
    ),
  );
}
