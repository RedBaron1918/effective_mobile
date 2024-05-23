import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcon extends StatelessWidget {
  const AppIcon(
    this.icon, {
    super.key,
    this.height,
    this.width,
    this.color,
    this.gradient,
    this.fit = BoxFit.contain,
  });

  final String icon;
  final double? height, width;
  final BoxFit fit;
  final Color? color;
  final LinearGradient? gradient;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      fit: fit,
      height: height,
      width: width,
      colorFilter: _colorFilter,
    );
  }

  ColorFilter? get _colorFilter =>
      color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null;
}
