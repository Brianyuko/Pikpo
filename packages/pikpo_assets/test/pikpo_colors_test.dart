import 'package:flutter_test/flutter_test.dart';
import 'package:pikpo_assets/pikpo_colors.dart';

void main() {
  group('PikpoColors', () {
    test('should be a singleton', () {
      final instance1 = PikpoColors();
      final instance2 = PikpoColors();
      expect(instance1, same(instance2));
    });
  });
}
