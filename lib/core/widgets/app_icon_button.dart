import 'package:effective_mobile/core/theme/app_colors.dart';
import 'package:effective_mobile/core/widgets/app_icon.dart';
import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    this.backgroundColor = Colors.transparent,
    this.iconColor = AppColors.basicWhite,
    super.key,
    this.circularShape = false,
    this.iconBackgroundColor = AppColors.basicWhite,
    required this.icon,
    this.borderRadious = 8.0,
    this.padding,
    this.label,
    required this.onTap,
    this.iconSize,
  });
  final bool circularShape;
  final Color iconBackgroundColor;
  final Color backgroundColor;
  final String icon;
  final double borderRadious;
  final EdgeInsets? padding;
  final Color iconColor;
  final ({String? prefix, String? sufix})? label;
  final void Function(BuildContext) onTap;
  final ({double? height, double? width})? iconSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
          color: backgroundColor,
        ),
        child: Row(
          children: [
            if (label?.prefix != null) Text("${label!.prefix}"),
            IconButton(
              style: IconButton.styleFrom(
                padding: padding ?? const EdgeInsets.all(12),
                shape: circularShape
                    ? const CircleBorder()
                    : RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(borderRadious)),
                backgroundColor: iconBackgroundColor,
              ),
              onPressed: () {
                onTap(context);
              },
              icon: AppIcon(
                icon,
                height: iconSize?.height ?? 24,
                width: iconSize?.width ?? 24,
                color: iconColor,
              ),
            ),
            if (label?.sufix != null) Text("${label!.sufix}"),
          ],
        ),
      ),
    );
  }
}
