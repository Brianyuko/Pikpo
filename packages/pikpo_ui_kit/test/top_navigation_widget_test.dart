import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:pikpo_ui_kit/key_ui_kit.dart';
import 'package:pikpo_ui_kit/top_navigation_widget.dart';

class MockDefaultCacheManager extends Mock implements DefaultCacheManager {}

class MockFunction extends Mock {
  void call();
}

void main() {
  group('Verify Top Navigation UI Kit', () {
    final mockCacheManager = MockDefaultCacheManager();
    testWidgets(
      'should display top navigation widget',
      (WidgetTester tester) async {
        await mockNetworkImages(() async {
          await tester.pumpWidget(
            _makeTestableWidget(
              body: const TopNavigationWidget(
                imageUrl:
                    'https://images.unsplash.com/photo-1589860518300-9eac95f784d9?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                name: 'Jeff Wang',
                username: '@sarah.sports',
                jobTitle: 'Personal Trainer',
              ),
            ),
          );
          await tester.pump();
          expect(find.byKey(KeyUiKit.circleProfileImage), findsOneWidget);
          expect(find.text('Jeff Wang'), findsOneWidget);
          expect(find.text('@sarah.sports'), findsOneWidget);
          expect(find.text('Personal Trainer'), findsOneWidget);
        });
      },
    );

    testWidgets(
      'should display icon error when image url is invalid',
      (WidgetTester tester) async {
        when(() => mockCacheManager.getImageFile(any())).thenThrow(Exception());
        await tester.pumpWidget(
          _makeTestableWidget(
            body: TopNavigationWidget(
              cacheManager: mockCacheManager,
              imageUrl: 'invalid_url',
              name: 'Jeff Wang',
              username: '@sarah.sports',
              jobTitle: 'Personal Trainer',
            ),
          ),
        );
        await tester.pumpAndSettle();
        expect(find.byKey(KeyUiKit.imageError), findsOneWidget);
      },
    );

    testWidgets(
      'should call onBack when back button is tapped',
      (WidgetTester tester) async {
        when(() => mockCacheManager.getImageFile(any())).thenThrow(Exception());
        final mockOnBack = MockFunction();
        await tester.pumpWidget(
          _makeTestableWidget(
            body: TopNavigationWidget(
              cacheManager: mockCacheManager,
              imageUrl: 'invalid_url',
              name: 'Jeff Wang',
              username: '@sarah.sports',
              jobTitle: 'Personal Trainer',
              onBack: mockOnBack.call,
            ),
          ),
        );
        await tester.tap(find.byKey(KeyUiKit.onBack));
        await tester.pump();
        verify(() => mockOnBack()).called(1);
      },
    );

    testWidgets(
      'should call onMore when more button is tapped',
      (WidgetTester tester) async {
        when(() => mockCacheManager.getImageFile(any())).thenThrow(Exception());
        final mockOnMore = MockFunction();
        await tester.pumpWidget(
          _makeTestableWidget(
            body: TopNavigationWidget(
              cacheManager: mockCacheManager,
              imageUrl: 'invalid_url',
              name: 'Jeff Wang',
              username: '@sarah.sports',
              jobTitle: 'Personal Trainer',
              onMore: mockOnMore.call,
            ),
          ),
        );
        await tester.tap(find.byKey(KeyUiKit.onMore));
        await tester.pump();
        verify(() => mockOnMore()).called(1);
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
