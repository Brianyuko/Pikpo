import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pikpo_ui_kit/key_ui_kit.dart';
import 'package:pikpo_ui_kit/top_navigation_title_widget.dart';

class MockFunction extends Mock {
  void call();
}

void main() {
  group('Verify Top Navigation Title UI Kit', () {
    testWidgets(
      'should display top navigation title widget',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          _makeTestableWidget(
            body: const TopNavigationTitleWidget(
              title: '2hr Personal Training',
            ),
          ),
        );
        await tester.pump();
        expect(find.text('2hr Personal Training'), findsOneWidget);
      },
    );
    testWidgets(
      'should call onBack when back button is tapped',
      (WidgetTester tester) async {
        final mockOnBack = MockFunction();
        await tester.pumpWidget(
          _makeTestableWidget(
            body: TopNavigationTitleWidget(
              title: '2hr Personal Training',
              onBack: mockOnBack.call,
            ),
          ),
        );
        await tester.tap(find.byKey(KeyUiKit.onBack));
        await tester.pump();
        verify(() => mockOnBack()).called(1);
      },
    );
  });
}

Widget _makeTestableWidget({required Widget body}) {
  return MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: body,
      ),
    ),
  );
}
