import 'package:effective_mobile/core/theme/theme.dart';
import 'package:effective_mobile/core/widgets/app_widgets.dart';
import 'package:effective_mobile/features/airlines/airline.dart';
import 'package:effective_mobile/features/seach/domain/entities/ticket_offer_entity.dart';
import 'package:effective_mobile/features/seach/presentation/cubit/search_cubit.dart';
import 'package:effective_mobile/features/seach/presentation/pages/ticket_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});
  static const String route = '/search';

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController startPoint;
  late TextEditingController endPoint;
  @override
  void initState() {
    startPoint = TextEditingController();
    endPoint = TextEditingController();
    context.read<SearchCubit>().init();

    super.initState();
  }

  @override
  void dispose() {
    startPoint.dispose();
    endPoint.dispose();

    super.dispose();
  }

  DateTime selectedDate = DateTime.now();
  String arrival = '';
  DateTime today = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        arrival = DateFormat('MMM d').format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    startPoint.text = context
        .select<AirlinesCubit, String>((value) => value.state.startPoint);
    endPoint.text =
        context.select<AirlinesCubit, String>((value) => value.state.endPoint);

    final List<TicketOfferEntity> offers =
        context.select<SearchCubit, List<TicketOfferEntity>>(
      (value) => value.state.offersList,
    );
    final List<Color> colors = [
      AppColors.specialRed,
      AppColors.specialBlue,
      AppColors.basicWhite,
    ];

    const BorderRadius borderRadius = BorderRadius.all(Radius.circular(16.0));
    const BoxConstraints boxConstraints =
        BoxConstraints(maxHeight: 60, maxWidth: 60);
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: borderRadius,
                color: AppColors.basicGrey3,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  AppIconButton(
                    iconBackgroundColor: Colors.transparent,
                    onTap: (_) {
                      Navigator.of(context).pop();
                    },
                    icon: Assets.arrowBack,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: startPoint,
                          decoration: InputDecoration(
                            prefixIconConstraints: boxConstraints,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(
                                right: 0,
                              ),
                              child: AppIconButton(
                                iconBackgroundColor: Colors.transparent,
                                icon: Assets.change,
                                onTap: (_) {
                                  context.read<AirlinesCubit>().onSwitch();
                                },
                              ),
                            ),
                            suffixIconConstraints: boxConstraints,
                            fillColor: Colors.white,
                            hintText: 'Минск',
                            hintStyle: TextStyles.regularBold
                                .copyWith(color: Colors.white),
                            border: InputBorder.none,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          child: Divider(
                            color: AppColors.basicGrey5,
                            thickness: 2,
                          ),
                        ),
                        TextFormField(
                          controller: endPoint,
                          decoration: InputDecoration(
                            prefixIconConstraints: boxConstraints,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(
                                right: 8.0,
                              ),
                              child: AppIconButton(
                                iconBackgroundColor: Colors.transparent,
                                icon: Assets.clearText,
                                onTap: (_) {
                                  context.read<AirlinesCubit>().onClear();
                                },
                              ),
                            ),
                            suffixIconConstraints: boxConstraints,
                            isDense: true,
                            fillColor: Colors.white,
                            hintText: 'Минск',
                            hintStyle: TextStyles.regularBold
                                .copyWith(color: AppColors.basicGrey6),
                            border: InputBorder.none,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 45,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const _Chips(
                  children: [
                    AppIcon(
                      Assets.plus,
                    ),
                    Text('обратно')
                  ],
                ),
                _Chips(
                  onTap: () {
                    _selectDate(context);
                  },
                  children: [
                    Text('${DateFormat('MMM d').format(today)}, сб $arrival'),
                  ],
                ),
                const _Chips(
                  children: [
                    AppIcon(
                      Assets.profile,
                      width: 16,
                      height: 16,
                    ),
                    Text(' 1, эконом'),
                  ],
                ),
                const _Chips(
                  children: [
                    AppIcon(
                      Assets.filter,
                      width: 16,
                      height: 16,
                    ),
                    Text('фильтры'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: const BoxDecoration(
              borderRadius: borderRadius,
              color: AppColors.basicGrey2,
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Прямые рельсы',
                  style: TextStyles.largeBold
                      .copyWith(color: AppColors.basicWhite),
                ),
                ...offers.asMap().entries.map((entry) {
                  int index = entry.key;
                  TicketOfferEntity offer = entry.value;
                  return _Details(
                    containerColor: colors[index],
                    data: offer,
                  );
                }),
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        elevation: 0,
                        shape: const ContinuousRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        onPressed: () {},
                        child: Text(
                          'Показать все',
                          style: TextStyles.regular
                              .copyWith(color: AppColors.specialBlue),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 0,
                    color: AppColors.specialBlue,
                    shape: const ContinuousRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                        return const TicketPage();
                      }));
                    },
                    child: Text(
                      'Посмотреть все билеты',
                      style: TextStyles.regular
                          .copyWith(color: AppColors.basicWhite),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const _Switch(),
        ]),
      ),
    );
  }
}

class _Switch extends StatefulWidget {
  const _Switch({
    super.key,
  });

  @override
  State<_Switch> createState() => _SwitchState();
}

class _SwitchState extends State<_Switch> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        decoration: const BoxDecoration(
            color: AppColors.basicGrey2,
            borderRadius: BorderRadius.all(Radius.circular(8))),
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                AppIcon(
                  Assets.bell,
                  color: AppColors.specialBlue,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Подписка на цену',
                  style: TextStyles.regular,
                )
              ],
            ),
            CupertinoSwitch(
                activeColor: AppColors.specialBlue,
                value: isOn,
                onChanged: (value) {
                  setState(() {
                    isOn = !isOn;
                  });
                }),
          ],
        ),
      ),
    );
  }
}

class _Chips extends StatelessWidget {
  const _Chips({required this.children, this.onTap});
  final List<Widget> children;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    const BorderRadius radius = BorderRadius.all(
      Radius.circular(50),
    );
    return InkWell(
      borderRadius: radius,
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: const BoxDecoration(
          color: AppColors.basicGrey3,
          borderRadius: radius,
        ),
        child: Row(
          children: children,
        ),
      ),
    );
  }
}

class _Details extends StatelessWidget {
  const _Details({super.key, required this.containerColor, required this.data});

  final Color containerColor;
  final TicketOfferEntity data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Text(data.title),
              ],
            ),
            Row(
              children: [
                Text(
                  "${data.price?.value} ₽",
                  style:
                      TextStyles.regular.copyWith(color: AppColors.specialBlue),
                ),
                const AppIcon(
                  Assets.arrowRight,
                  width: 16,
                  height: 16,
                  color: AppColors.specialBlue,
                )
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: SizedBox(
            height: 30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: data.timeRange!
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 4.0,
                        ),
                        child: Text(e),
                      ))
                  .toList(),
            ),
          ),
        ),
        const Divider(
          color: AppColors.basicGrey4,
        ),
      ],
    );
  }
}
