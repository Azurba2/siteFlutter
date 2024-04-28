import 'package:flutter/material.dart';
import 'package:joao_site_flutter/consts/colors.dart';

abstract class AppTextStyles {
  static const TextStyle normalBrowserWhite =
      TextStyle(fontSize: 30, fontStyle: FontStyle.normal, color: Colors.white);
  static const TextStyle normalMobileWhite =
      TextStyle(fontSize: 20, fontStyle: FontStyle.normal, color: Colors.white);
  static const TextStyle normalBrowserBlack =
      TextStyle(fontSize: 30, fontStyle: FontStyle.normal, color: Colors.black);
  static const TextStyle normalMobileBlack =
      TextStyle(fontSize: 20, fontStyle: FontStyle.normal, color: Colors.black);
  static const TextStyle titleBrowserWhite =
      TextStyle(fontSize: 40, fontStyle: FontStyle.normal, color: Colors.white);
  static const TextStyle titleMobileBlack =
      TextStyle(fontSize: 40, fontStyle: FontStyle.normal, color: Colors.black);
  static const TextStyle smallMobileWhite =
      TextStyle(fontSize: 15, fontStyle: FontStyle.normal, color: Colors.white);
  static const TextStyle titleMobileGreen = TextStyle(
      fontSize: 40,
      fontStyle: FontStyle.normal,
      color: ColorPalette.regularGreen);
}
