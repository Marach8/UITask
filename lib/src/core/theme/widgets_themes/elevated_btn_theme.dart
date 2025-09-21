import 'package:flutter/material.dart';
import 'package:ui_task/src/core/utils/colors.dart';
import 'package:ui_task/src/core/utils/sizes.dart';
import 'package:ui_task/src/core/utils/strings.dart';

class UIElevatedBtnTheme {
  const UIElevatedBtnTheme._();

  static ElevatedButtonThemeData lightElevatedBtnTheme =
    ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: UIColors.hexFFFFFF,
        backgroundColor: UIColors.hex5925DC,
        textStyle: const TextStyle(
          fontFamily: UIStrings.AEONIK,
          fontSize: UISizes.k15,
          height: 1.2, letterSpacing: 0,
          fontWeight: FontWeight.w400,
          overflow: TextOverflow.ellipsis,
        ),
        iconSize: 16,
        padding: const EdgeInsets.all(10),
        iconColor: UIColors.hexFFFFFF,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );

  //Dark Theme will be implemented here
}
