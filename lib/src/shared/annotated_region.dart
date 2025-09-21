import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UIAnnotatedRegion extends StatelessWidget {
  const UIAnnotatedRegion({
    super.key,
    required this.child,
    this.statusBarColor,
    this.systemBarColor,
  });
  final Widget child;
  final Color? statusBarColor, systemBarColor;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: systemBarColor ?? Theme.of(context).scaffoldBackgroundColor,
        statusBarColor:  statusBarColor ?? Theme.of(context).scaffoldBackgroundColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: child,
    );
  }
}
