part of '../pages/airlines.dart';

class _Card extends StatelessWidget {
  const _Card(
      {required this.image,
      required this.label,
      required this.subLabel,
      required this.price});
  final String image;
  final String label;
  final String subLabel;
  final int price;

  String formatPrice(int price) {
    final formatter = NumberFormat('#,###');
    return formatter.format(price).replaceAll(',', ' ');
  }

  @override
  Widget build(BuildContext context) {
    const SizedBox gap = SizedBox(height: 8);
    const BorderRadius borderRadius = BorderRadius.all(Radius.circular(16));
    return InkWell(
      borderRadius: borderRadius,
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: borderRadius,
              child: Image.asset(
                image,
                width: 132,
                height: 133,
              ),
            ),
            gap,
            Text(
              label,
              style: TextStyles.small,
            ),
            gap,
            Text(
              subLabel,
              style: TextStyles.small,
            ),
            Row(
              children: <Widget>[
                const AppIcon(Assets.airPlane),
                Text(
                  'от ${formatPrice(price)} ₽',
                  style: TextStyles.small,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
