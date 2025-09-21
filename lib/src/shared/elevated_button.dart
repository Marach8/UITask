import 'package:flutter/material.dart';
import 'package:ui_task/src/core/utils/extensions/context_extensions.dart';
import 'package:ui_task/src/core/utils/sizes.dart';


class UIElevatedBtnWithIcon extends StatelessWidget {
  const UIElevatedBtnWithIcon({
    super.key,
    required this.buttonTitle,
    required this.onPressed,
    this.height,
    this.width,
    this.bgColor,
    this.fgColor,
    required this.icon,
  });

  final String buttonTitle;
  final void Function()? onPressed;
  final double? height, width;
  final Color? bgColor, fgColor;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
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
