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

    test('k4A4A4A should have color PikpoColors.k4A4A4A and same font family',
        () {
      final modifiedTextStyle = textStyle.k4A4A4A;
      expect(modifiedTextStyle.color, PikpoColors.k4A4A4A);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('k000000 should have color PikpoColors.k000000 and same font family',
        () {
      final modifiedTextStyle = textStyle.k000000;
      expect(modifiedTextStyle.color, PikpoColors.k000000);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('kF8F8F8 should have color PikpoColors.kF8F8F8 and same font family',
        () {
      final modifiedTextStyle = textStyle.kF8F8F8;
      expect(modifiedTextStyle.color, PikpoColors.kF8F8F8);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('k0A0A0A should have color PikpoColors.k0A0A0A and same font family',
        () {
      final modifiedTextStyle = textStyle.k0A0A0A;
      expect(modifiedTextStyle.color, PikpoColors.k0A0A0A);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('kBDDBDBD should have color PikpoColors.kBDDBDBD and same font family',
        () {
      final modifiedTextStyle = textStyle.kBDDBDBD;
      expect(modifiedTextStyle.color, PikpoColors.kBDBDBD);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('fs9 should have fontSize 9 and same font family', () {
      final modifiedTextStyle = textStyle.fs9;
      expect(modifiedTextStyle.fontSize, 9);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('fs10 should have fontSize 10 and same font family', () {
      final modifiedTextStyle = textStyle.fs10;
      expect(modifiedTextStyle.fontSize, 10);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('fs11 should have fontSize 11 and same font family', () {
      final modifiedTextStyle = textStyle.fs11;
      expect(modifiedTextStyle.fontSize, 11);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });

    test('fs12 should have fontSize 12 and same font family', () {
      final modifiedTextStyle = textStyle.fs12;
      expect(modifiedTextStyle.fontSize, 12);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });
    test('fs14 should have fontSize 14 and same font family', () {
      final modifiedTextStyle = textStyle.fs14;
      expect(modifiedTextStyle.fontSize, 14);
      expect(modifiedTextStyle.fontFamily, textStyle.fontFamily);
    });
  });
}
