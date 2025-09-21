import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UIImageLoader extends StatelessWidget {
  const UIImageLoader({
    super.key,
    required this.imgPath,
    this.height = 35,
    this.width = 35,
    this.package,
    this.boxFit = BoxFit.contain,
  });

  final String imgPath;
  final String? package;
  final BoxFit boxFit;
  final double? height, width;

  @override
  Widget build(_) {
    if (imgPath.isEmpty) {
      return _ImgErrorWidget(width: width, height: height);
    }

    final String imageExtension = imgPath.split('.').last.toLowerCase();

    if (imageExtension == 'svg') {
      return SvgPicture.asset(
        imgPath,
        fit: boxFit,
        height: height,
        width: width,
      );
    }

    return Image.asset(
      imgPath,
      fit: boxFit,
      height: height,
      width: width,
      package: package,
      errorBuilder: (_, __, ___) => _ImgErrorWidget(width: width, height: height),
    );
  }
}


class _ImgErrorWidget extends StatelessWidget {
  const _ImgErrorWidget({required this.width, required this.height});

  final double? width, height;

  @override
  Widget build(_) {
    return SizedBox(
      height: height,
      width: width,
      child: Icon(Icons.error, size: height != null ? (height! / 2) : null),
    );
  }
}
