import 'package:effective_mobile/core/theme/theme.dart';
import 'package:flutter/material.dart';

class AppBottomModal extends StatelessWidget {
  final List<Widget> children;
  final String title;
  final String? label;
  final Color? titleColor;

  const AppBottomModal(
      {super.key,
      required this.children,
      this.label,
      required this.title,
      this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(40),
        ),
        color: AppColors.basicBlack,
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              title,
              style: TextStyles.extraLarge.copyWith(
                color: titleColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Divider(),
            ),
            if (label != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text(label!, style: TextStyles.extraLarge),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[...children],
            )
          ],
        ),
      ),
    );
  }
}
