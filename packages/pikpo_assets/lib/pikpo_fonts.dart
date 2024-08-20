import 'package:flutter/material.dart';
import 'package:pikpo_assets/pikpo_colors.dart';

extension PikpoFontExtension on TextStyle {
  TextStyle get extraBold => copyWith(fontWeight: FontWeight.w800);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w600);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);
  TextStyle get light => copyWith(fontWeight: FontWeight.w300);
  TextStyle get extraLight => copyWith(fontWeight: FontWeight.w200);
  TextStyle get thin => copyWith(fontWeight: FontWeight.w100);

  TextStyle get fs11 => copyWith(fontSize: 11);
  TextStyle get fs12 => copyWith(fontSize: 12);
  TextStyle get fs14 => copyWith(fontSize: 14);

  TextStyle get kFFFFFF => copyWith(color: PikpoColors.kFFFFFF);
  TextStyle get k4A4A4A => copyWith(color: PikpoColors.k4A4A4A);
  TextStyle get k000000 => copyWith(color: PikpoColors.k000000);
}

class PikpoFonts {
  static PikpoFonts? _instance;

  PikpoFonts._internal() {
    _instance = this;
  }

  factory PikpoFonts() => _instance ?? PikpoFonts._internal();

  static const String _defaultFontFamily = 'Montserrat';

  static const TextStyle defaultTextStyle = TextStyle(
    fontFamily: _defaultFontFamily,
    fontWeight: FontWeight.w400,
    color: PikpoColors.k000000,
    package: 'pikpo_assets',
  );
}
