import 'package:flutter_test/flutter_test.dart';
import 'package:pikpo_ui_kit/key_ui_kit.dart';

void main() {
  group('KeyUiKit', () {
    test('should be a singleton', () {
      final instance1 = KeyUiKit();
      final instance2 = KeyUiKit();
      expect(instance1, same(instance2));
    });
  });
}
