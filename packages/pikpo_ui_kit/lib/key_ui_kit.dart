import 'package:flutter/material.dart';

class KeyUiKit {
  static KeyUiKit? _instance;

  KeyUiKit._internal() {
    _instance = this;
  }

  factory KeyUiKit() => _instance ?? KeyUiKit._internal();

  static const Key onBack = Key('onBack');
  static const Key onTap = Key('onTap');
  static const Key onMore = Key('onMore');
  static const Key circleProfileImage = Key('circleProfileImage');
  static const Key imageError = Key('imageError');
}
