import 'package:accelerator_task_fourth/core/constants/color_theme.dart';
import 'package:flutter/cupertino.dart';

class TextThemes {
  static var hintText = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: 16,
    color: ColorPalette.darkGray,
  );

  static var position = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 12,
      color: ColorPalette.darkGray,
      letterSpacing: 0.5);

  static var title = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 10,
      color: ColorPalette.darkGray,
      letterSpacing: 1.5);

  static var fullName = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 16,
      color: ColorPalette.white,
      letterSpacing: 0.5);

  static var fullNameLayoutGrid = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 14,
      color: ColorPalette.white,
      letterSpacing: 0.5);

  static var status = TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 10,
      color: ColorPalette.green,
      letterSpacing: 1.5);
}
