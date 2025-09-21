import 'package:flutter/material.dart';
import 'package:ui_task/src/core/utils/colors.dart';
import 'package:ui_task/src/core/utils/sizes.dart';

class UITextTheme {
  const UITextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle(
      color: UIColors.hexFFFFFF,
      fontSize: UISizes.k32,
      height: 1.02, letterSpacing: -1,
      fontWeight: FontWeight.w700,
      overflow: TextOverflow.ellipsis,
    ),

    bodyMedium: TextStyle(
      color: UIColors.hexFFFFFF,
      fontSize: UISizes.k15,
      height: 1.2, letterSpacing: 0,
      fontWeight: FontWeight.w400,
      overflow: TextOverflow.ellipsis,
    ),

    bodySmall: TextStyle(
      color: UIColors.hexFFFFFF,
      fontSize: UISizes.k12,
      height: 1.4, letterSpacing: 0,
      fontWeight: FontWeight.w400,
      overflow: TextOverflow.ellipsis,
    ),
  );

  //implement darkTextTheme here
}
