import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      directories: directories,
      addons: [
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhoneSE,
            Devices.ios.iPhone12Mini,
            Devices.ios.iPhone12ProMax,
            Devices.ios.iPhone13,
            Devices.ios.iPhone13Mini,
            Devices.ios.iPhone13ProMax,
            Devices.android.onePlus8Pro,
            Devices.android.samsungGalaxyA50,
            Devices.android.samsungGalaxyNote20,
            Devices.android.samsungGalaxyNote20Ultra,
            Devices.android.samsungGalaxyS20,
            Devices.android.sonyXperia1II,
          ],
          initialDevice: Devices.ios.iPhone13,
        ),
      ],
    );
  }
}
