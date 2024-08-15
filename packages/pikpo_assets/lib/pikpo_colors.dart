import 'package:flutter/material.dart';

class PikpoColors {
  static PikpoColors? _instance;

  PikpoColors._internal() {
    _instance = this;
  }

  factory PikpoColors() => _instance ?? PikpoColors._internal();

  static const Color kFFFFFF = Color(0xFFFFFFFF);
  static const Color k000000 = Color(0xFF000000);
}
