import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:pikpo_ui_kit/card_event_widget.dart';
import 'package:pikpo_ui_kit/key_ui_kit.dart';

class MockDefaultCacheManager extends Mock implements DefaultCacheManager {}

class MockFunction extends Mock {
  void call();
}

void main() {
  group('Verify Card Event Widget', () {
    final mockCacheManager = MockDefaultCacheManager();
    testWidgets(
      'should display card event widget',
      (WidgetTester tester) async {
        await mockNetworkImages(() async {
          await tester.pumpWidget(
            _makeTestableWidget(
              body: CardEventWidget(
                onTap: () {},
                eventImageUrl:
                    'https://images.unsplash.com/photo-1590556409324-aa1d726e5c3c?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                eventName: 'Privater Training Sessions',
                roleName: 'Coach',
                eventType: 'Call',
                duration: 1800,
                description: 'This is a private training session',
              ),
            ),
          );
          await tester.pump();
          expect(find.text('Privater Training Sessions'), findsOneWidget);
          expect(find.text('Coach'), findsOneWidget);
          expect(find.text('Call'), findsOneWidget);
          expect(find.text('30 Mins'), findsOneWidget);
          expect(
              find.text('This is a private training session'), findsOneWidget);
        });
      },
    );

    testWidgets(
      'should display icon error when event image url is invalid',
      (WidgetTester tester) async {
        when(() => mockCacheManager.getImageFile(any())).thenThrow(Exception());
        await tester.pumpWidget(
          _makeTestableWidget(
            body: CardEventWidget(
              onTap: () {},
              cacheManager: mockCacheManager,
              eventImageUrl: 'invalid_url',
              eventName: 'Privater Training Sessions',
              roleName: 'Coach',
              eventType: 'Call',
              duration: 1800,
              description: 'This is a private training session',
            ),
          ),
        );
        await tester.pumpAndSettle();
        expect(find.byKey(KeyUiKit.imageError), findsOneWidget);
      },
    );

    testWidgets(
      'should call onTap when card event is tapped',
      (WidgetTester tester) async {
        when(() => mockCacheManager.getImageFile(any())).thenThrow(Exception());
        final mockOnTap = MockFunction();
        await tester.pumpWidget(
          _makeTestableWidget(
            body: CardEventWidget(
              onTap: mockOnTap.call,
              cacheManager: mockCacheManager,
              eventImageUrl: 'invalid_url',
              eventName: 'Privater Training Sessions',
              roleName: 'Coach',
              eventType: 'Call',
              duration: 1800,
              description: 'This is a private training session',
            ),
          ),
        );
        await tester.tap(find.byKey(KeyUiKit.onTap));
        await tester.pump();
        verify(() => mockOnTap()).called(1);
      },
    );
  });
}

Widget _makeTestableWidget({required Widget body}) {
  return MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Column(children: [
          body,
        ]),
      ),
    ),
  );
}
