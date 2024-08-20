import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pikpo_ui_kit/bottom_sheet_base_widget.dart';

void main() {
  group('Verify Base Bottom Sheet', () {
    testWidgets('should display base bottom sheet',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        _makeTestableWidget(
          body: const BottomSheetBaseWidget(
            child: Text('Test Child'),
          ),
        ),
      );

      final findBottomSheetBase = find.byType(BottomSheetBaseWidget);
      final findChild = find.text('Test Child');
      expect(findBottomSheetBase, findsOneWidget);
      expect(findChild, findsOneWidget);
    });
  });
}

Widget _makeTestableWidget({required Widget body}) {
  return MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            body,
          ],
        ),
      ),
    ),
  );
}
