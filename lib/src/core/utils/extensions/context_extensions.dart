import 'package:flutter/material.dart' show BuildContext, MediaQuery, Theme, TextTheme;

extension ContextExtensions on BuildContext {
  double get screenHeight => MediaQuery.sizeOf(this).height;

  double get screenWidth => MediaQuery.sizeOf(this).width;

  TextTheme get textTheme => Theme.of(this).textTheme;
}
