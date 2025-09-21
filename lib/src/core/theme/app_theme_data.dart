import 'package:flutter/material.dart';
import 'package:ui_task/src/core/theme/widgets_themes/elevated_btn_theme.dart';
import 'package:ui_task/src/core/theme/widgets_themes/outlined_button_theme.dart';
import 'package:ui_task/src/core/theme/widgets_themes/text_theme.dart';
import 'package:ui_task/src/core/utils/colors.dart';
import 'package:ui_task/src/core/utils/strings.dart';

class UIThemeData {
  const UIThemeData._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: UIStrings.AEONIK,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: UIColors.hexFFFFFF,
    textTheme: UITextTheme.lightTextTheme,
    elevatedButtonTheme: UIElevatedBtnTheme.lightElevatedBtnTheme,
    outlinedButtonTheme: UIOutlinedBtnTheme.lightOutlinedBtnTheme
    // textButtonTheme: ECardTxtBtnTheme.lightTextButtonTheme,
    // appBarTheme: ECardAppBarTheme.lightAppBarTheme,
    // iconTheme: ECardIconTheme.lightIconTheme,
    // bottomSheetTheme: ECardBottomSheetTheme.lightBottomSheetTheme,
    // inputDecorationTheme: ECardInputDecorTheme.lightInputDecorTheme,
  );

  //Dark Theme will be added here when the need arises
}
