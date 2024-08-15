import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pikpo_assets/pikpo_colors.dart';
import 'package:pikpo_assets/pikpo_fonts.dart';

void main() {
  group('PikpoFonts', () {
    test('should be a singleton', () {
      final instance1 = PikpoFonts();
      final instance2 = PikpoFonts();
      expect(instance1, same(instance2));
    });

    test('default font family should be Montserrat', () {
      expect(PikpoFonts.defaultTextStyle.fontFamily,
          'packages/pikpo_assets/Montserrat');
    });

    test('defaultTextStyle should have correct properties', () {
      const textStyle = PikpoFonts.defaultTextStyle;
      expect(textStyle.fontFamily, 'packages/pikpo_assets/Montserrat');
      expect(textStyle.fontWeight, FontWeight.w400);
      expect(textStyle.color, Colors.black);
    });
  });

  group('PikpoFontExtension', () {
    const textStyle = PikpoFonts.defaultTextStyle;

    test('extraBold should have fontWeight w800 and same font family', () {
      final modifiedTextStyle = textStyle.extraBold;
      expect(modifiedTextStyle.fontWeight, FontWeight.w800);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('bold should have fontWeight w700 and same font family', () {
      final modifiedTextStyle = textStyle.bold;
      expect(modifiedTextStyle.fontWeight, FontWeight.w700);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('semiBold should have fontWeight w600 and same font family', () {
      final modifiedTextStyle = textStyle.semiBold;
      expect(modifiedTextStyle.fontWeight, FontWeight.w600);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('medium should have fontWeight w500 and same font family', () {
      final modifiedTextStyle = textStyle.medium;
      expect(modifiedTextStyle.fontWeight, FontWeight.w500);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('regular should have fontWeight w400 and same font family', () {
      final modifiedTextStyle = textStyle.regular;
      expect(modifiedTextStyle.fontWeight, FontWeight.w400);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('light should have fontWeight w300 and same font family', () {
      final modifiedTextStyle = textStyle.light;
      expect(modifiedTextStyle.fontWeight, FontWeight.w300);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('extraLight should have fontWeight w200 and same font family', () {
      final modifiedTextStyle = textStyle.extraLight;
      expect(modifiedTextStyle.fontWeight, FontWeight.w200);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('thin should have fontWeight w100 and same font family', () {
      final modifiedTextStyle = textStyle.thin;
      expect(modifiedTextStyle.fontWeight, FontWeight.w100);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('kFFFFFF should have color PikpoColors.kFFFFFF and same font family',
        () {
      final modifiedTextStyle = textStyle.kFFFFFF;
      expect(modifiedTextStyle.color, PikpoColors.kFFFFFF);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('k000000 should have color PikpoColors.k000000 and same font family',
        () {
      final modifiedTextStyle = textStyle.k000000;
      expect(modifiedTextStyle.color, PikpoColors.k000000);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });
  });
}
