import 'package:effective_mobile/core/enums/enums.dart';
import 'package:effective_mobile/core/theme/app_colors.dart';
import 'package:effective_mobile/core/theme/assets.dart';
import 'package:effective_mobile/core/theme/text_style.dart';
import 'package:effective_mobile/core/widgets/app_icon.dart';
import 'package:flutter/material.dart';

class AppBottomBar extends StatefulWidget {
  final ValueChanged onPressed;
  final BottomBarTab currentTab;

  const AppBottomBar({
    super.key,
    required this.onPressed,
    required this.currentTab,
  });

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  late final List<({String label, String icon, BottomBarTab value})> _buttons =
      [
    (label: 'Авиабилеты', icon: Assets.airPlane, value: BottomBarTab.airlines),
    (label: 'Отели', icon: Assets.bed, value: BottomBarTab.hotels),
    (label: 'Короче', icon: Assets.location, value: BottomBarTab.moreLikeThis),
    (label: 'Подписки', icon: Assets.bell, value: BottomBarTab.subscriptions),
    (label: 'Профиль', icon: Assets.profile, value: BottomBarTab.profile),
  ];

  @override
  Widget build(BuildContext context) {
    const Color color = Colors.black;
    return BottomAppBar(
      surfaceTintColor: color,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(_buttons.length, (int i) {
          return Expanded(
            child: _NavButton(
              onPressed: (v) {
                widget.onPressed(v);
              },
              icon: _buttons[i].icon,
              label: _buttons[i].label,
              value: _buttons[i].value,
              selectedValue: widget.currentTab,
            ),
          );
        }),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final String icon;
  final String label;
  final BottomBarTab value;
  final BottomBarTab selectedValue;
  final ValueChanged<BottomBarTab> onPressed;

  const _NavButton({
    required this.icon,
    required this.label,
    required this.value,
    required this.selectedValue,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final bool isActive = value == selectedValue;
    final Color color = isActive ? AppColors.specialBlue : AppColors.basicGrey6;

    final AppIcon icon = AppIcon(
      this.icon,
      color: color,
      height: 24,
      width: 24,
    );

    final Text label = Text(
      this.label,
      style: TextStyles.extraSmall.copyWith(
        color: color,
      ),
    );

    return MaterialButton(
      shape: const CircleBorder(),
      padding: const EdgeInsets.all(4),
      onPressed: () => onPressed(value),
      child: Column(
        children: [
          icon,
          label,
        ],
      ),
    );
  }
}
