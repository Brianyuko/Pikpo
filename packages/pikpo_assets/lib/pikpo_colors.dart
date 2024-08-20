import 'package:flutter/material.dart';

class PikpoColors {
  static PikpoColors? _instance;

  PikpoColors._internal() {
    _instance = this;
  }

  factory PikpoColors() => _instance ?? PikpoColors._internal();

  static const Color kFFFFFF = Color(0xFFFFFFFF);
  static const Color kF8F8F8 = Color(0xFFF8F8F8);
  static const Color k000000 = Color(0xFF000000);
  static const Color k0A0A0A = Color(0xFF0A0A0A);
}
