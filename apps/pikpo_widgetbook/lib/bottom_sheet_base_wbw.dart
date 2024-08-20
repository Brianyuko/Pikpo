import 'package:flutter/material.dart';
import 'package:pikpo_ui_kit/bottom_sheet_base_widget.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Bottom Sheet Base', type: BottomSheetBaseWidget)
Widget bottomSheetBase(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: Column(
        children: [
          const Spacer(),
          BottomSheetBaseWidget(
            height: context.knobs.double.slider(
              label: 'Height',
              initialValue: 100,
              min: 100,
              max: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).padding.bottom,
            ),
            child: const Column(
              children: [],
            ),
          ),
        ],
      ),
    ),
  );
}
