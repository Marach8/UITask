import 'package:flutter/material.dart';
import 'package:ui_task/src/core/utils/extensions/context_extensions.dart';
import 'package:ui_task/src/core/utils/sizes.dart';


class UIOutlinedButtonWithIcon extends StatelessWidget {
  const UIOutlinedButtonWithIcon({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
    this.fgColor,
    this.bgColor,
    this.height,
    this.width,
    required this.icon,
    this.padding,
  });

  final String buttonTitle;
  final Color? fgColor, bgColor;
  final void Function()? onPressed;
  final double? height, width;
  final Widget icon;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: fgColor,
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        fixedSize: Size(width ?? context.screenWidth, height ?? 48),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: UISizes.k12,
        children: <Widget>[
          icon,
          Text(
            buttonTitle,
            style: context.textTheme.bodyMedium,
          )
        ],
      )
    );
  }
}
