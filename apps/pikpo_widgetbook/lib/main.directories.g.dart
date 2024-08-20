// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:pikpo_widgetbook/bottom_sheet_base_wbw.dart' as _i2;
import 'package:pikpo_widgetbook/top_navigation_title_wbw.dart' as _i3;
import 'package:pikpo_widgetbook/top_navigation_wbw.dart' as _i4;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookLeafComponent(
    name: 'BottomSheetBaseWidget',
    useCase: _i1.WidgetbookUseCase(
      name: 'Bottom Sheet Base',
      builder: _i2.bottomSheetBase,
    ),
  ),
  _i1.WidgetbookLeafComponent(
    name: 'TopNavigationTitleWidget',
    useCase: _i1.WidgetbookUseCase(
      name: 'Title Only',
      builder: _i3.titleOnly,
    ),
  ),
  _i1.WidgetbookComponent(
    name: 'TopNavigationWidget',
    useCases: [
      _i1.WidgetbookUseCase(
        name: 'Invalid URL Profile Image',
        builder: _i4.invalidURLProfileImageUseCase,
      ),
      _i1.WidgetbookUseCase(
        name: 'UI Kit',
        builder: _i4.uiKitUseCase,
      ),
    ],
  ),
];
