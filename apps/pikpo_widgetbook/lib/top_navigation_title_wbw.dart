import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:pikpo_ui_kit/top_navigation_title_widget.dart';

@widgetbook.UseCase(name: 'Title Only', type: TopNavigationTitleWidget)
Widget titleOnly(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: TopNavigationTitleWidget(
        title: context.knobs.string(
          label: 'Title',
          initialValue: '2hr Personal Training',
        ),
      ),
    ),
  );
}
