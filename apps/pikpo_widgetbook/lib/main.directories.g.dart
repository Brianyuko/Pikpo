// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:pikpo_widgetbook/bottom_sheet_base_wbw.dart' as _i2;
import 'package:pikpo_widgetbook/card_event_wbw.dart' as _i3;
import 'package:pikpo_widgetbook/card_info_rounded_wbw.dart' as _i4;
import 'package:pikpo_widgetbook/top_navigation_title_wbw.dart' as _i5;
import 'package:pikpo_widgetbook/top_navigation_wbw.dart' as _i6;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookLeafComponent(
    name: 'BottomSheetBaseWidget',
    useCase: _i1.WidgetbookUseCase(
      name: 'Bottom Sheet Base',
      builder: _i2.bottomSheetBase,
    ),
  ),
  _i1.WidgetbookComponent(
    name: 'CardEventWidget',
    useCases: [
      _i1.WidgetbookUseCase(
        name: 'Card Event Call',
        builder: _i3.cardEventCall,
      ),
      _i1.WidgetbookUseCase(
        name: 'Card Event In Person',
        builder: _i3.cardEventInPerson,
      ),
      _i1.WidgetbookUseCase(
        name: 'Card Event UI Kit',
        builder: _i3.cardEvent,
      ),
    ],
  ),
  _i1.WidgetbookComponent(
    name: 'CardInfoRoundedWidget',
    useCases: [
      _i1.WidgetbookUseCase(
        name: '120 Mins',
        builder: _i4.time120,
      ),
      _i1.WidgetbookUseCase(
        name: '30 Mins',
        builder: _i4.time30,
      ),
      _i1.WidgetbookUseCase(
        name: 'All',
        builder: _i4.allCase,
      ),
      _i1.WidgetbookUseCase(
        name: 'Call',
        builder: _i4.call,
      ),
      _i1.WidgetbookUseCase(
        name: 'In Person',
        builder: _i4.inPerson,
      ),
      _i1.WidgetbookUseCase(
        name: 'Multiple Session',
        builder: _i4.multipleSession,
      ),
      _i1.WidgetbookUseCase(
        name: 'Single Session',
        builder: _i4.singleSession,
      ),
    ],
  ),
  _i1.WidgetbookLeafComponent(
    name: 'TopNavigationTitleWidget',
    useCase: _i1.WidgetbookUseCase(
      name: 'Title Only',
      builder: _i5.titleOnly,
    ),
  ),
  _i1.WidgetbookComponent(
    name: 'TopNavigationWidget',
    useCases: [
      _i1.WidgetbookUseCase(
        name: 'Invalid URL Profile Image',
        builder: _i6.invalidURLProfileImageUseCase,
      ),
      _i1.WidgetbookUseCase(
        name: 'UI Kit',
        builder: _i6.uiKitUseCase,
      ),
    ],
  ),
];
