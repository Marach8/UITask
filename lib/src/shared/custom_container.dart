import 'package:flutter/material.dart';
import 'package:ui_task/src/core/utils/extensions/context_extensions.dart';

class UIContainer extends StatelessWidget {
  const UIContainer({
    super.key,
    this.padding,
    this.color,
    this.height,
    this.width,
    this.radius,
    this.border,
    this.margin,
    this.gradient,
    this.boxShape,
    this.constraints,
    this.alignment,
    this.boxShadow,
    this.onTap,
    this.duration,
    this.image,
    this.clipBehavior = Clip.none,
    this.child,
    this.splashColor,
  });

  final EdgeInsetsGeometry? padding, margin;
  final Color? color, splashColor;
  final double? height, width, radius;
  final BoxBorder? border;
  final Widget? child;
  final BoxShape? boxShape;
  final BoxConstraints? constraints;
  final Gradient? gradient;
  final AlignmentGeometry? alignment;
  final List<BoxShadow>? boxShadow;
  final int? duration;
  final Clip clipBehavior;
  final DecorationImage? image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius ?? 10),
      splashColor:
          splashColor ??
          context.textTheme.displayMedium?.color?.withValues(alpha: 0.5),
      onTap: onTap,
      child: AnimatedContainer(
        curve: Curves.easeIn,
        clipBehavior: clipBehavior,
        duration: Duration(milliseconds: duration ?? 500),
        alignment: alignment,
        margin: margin,
        padding: padding,
        height: height,
        width: width,
        constraints: constraints,
        decoration: BoxDecoration(
          image: image,
          boxShadow: boxShadow,
          gradient: gradient,
          shape: boxShape ?? BoxShape.rectangle,
          color: color,
          border: border,
          borderRadius: boxShape == null
              ? BorderRadius.circular(radius ?? 0)
              : null,
        ),
        child: child ?? const SizedBox.shrink(),
      ),
    );
  }
}
