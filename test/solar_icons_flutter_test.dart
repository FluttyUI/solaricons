import 'package:flutter_test/flutter_test.dart';
import 'package:flutty_solar_icons/flutty_solar_icons.dart';

void main() {
  test('icon codepoint is available', () {
    expect(SolarIcons.User.codePoint, greaterThan(0));
  });
}
