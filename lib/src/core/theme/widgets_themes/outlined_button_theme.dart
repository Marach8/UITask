import 'package:flutter/material.dart';
import 'package:ui_task/src/core/utils/colors.dart';
import 'package:ui_task/src/core/utils/sizes.dart';
import 'package:ui_task/src/core/utils/strings.dart';

class UIOutlinedBtnTheme {
  const UIOutlinedBtnTheme._();

  static OutlinedButtonThemeData lightOutlinedBtnTheme =
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          foregroundColor: UIColors.hexFFFFFF,
          backgroundColor: UIColors.trsprnt,
          textStyle: const TextStyle(
            fontFamily: UIStrings.AEONIK,
            fontSize: UISizes.k15,
            height: 1.2, letterSpacing: 0,
            fontWeight: FontWeight.w400,
            overflow: TextOverflow.ellipsis,
          ),
          iconSize: 16,
          side: BorderSide(color: UIColors.hexFFFFFF),
          padding: const EdgeInsets.all(10),
          iconColor: UIColors.hexFFFFFF,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );

  //Implement for Dark Theme here
}
