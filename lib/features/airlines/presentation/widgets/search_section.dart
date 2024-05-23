part of '../pages/airlines.dart';

class _SearchSection extends StatefulWidget {
  const _SearchSection();

  @override
  State<_SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<_SearchSection> {
  late TextEditingController startPoint;
  late TextEditingController endPoint;
  late String text;
  @override
  initState() {
    startPoint = TextEditingController();
    endPoint = TextEditingController();

    super.initState();
  }

  @override
  dispose() {
    startPoint.dispose();
    endPoint.dispose();
    super.dispose();
  }

  Future<void> showModal(BuildContext context) {
    return showModalBottomSheet(
        enableDrag: true,
        showDragHandle: true,
        isScrollControlled: true,
        useSafeArea: true,
        backgroundColor: AppColors.basicGrey2,
        context: context,
        builder: (context) {
          endPoint.text = context
              .select<AirlinesCubit, String>((value) => value.state.endPoint);
          startPoint.text = context
              .select<AirlinesCubit, String>((value) => value.state.startPoint);

          const EdgeInsets padding =
              EdgeInsets.symmetric(horizontal: 5, vertical: 3);
          const BorderRadius borderRadius =
              BorderRadius.all(Radius.circular(16.0));
          const BoxConstraints boxConstraints =
              BoxConstraints(maxHeight: 40, maxWidth: 40);
          List<({String icon, Color backgroundColor, String text})> icons = [
            (
              icon: Assets.travel,
              backgroundColor: AppColors.specialDarkGreen,
              text: 'Сложный маршрут'
            ),
            (
              icon: Assets.sphere,
              backgroundColor: AppColors.specialBlue,
              text: 'Куда угодно'
            ),
            (
              icon: Assets.calendar,
              backgroundColor: AppColors.specialDarkBlue,
              text: 'Выходные'
            ),
            (
              icon: Assets.flame,
              backgroundColor: AppColors.specialRed,
              text: 'Горячие билеты'
            ),
          ];

          final List<({String img, String title, String description})> cards = [
            (
              img: Assets.istambul,
              title: 'Стамбул',
              description: 'Популярное направление'
            ),
            (
              img: Assets.sochi,
              title: 'Сочи',
              description: 'Популярное направление'
            ),
            (
              img: Assets.phuket,
              title: 'Пхукет',
              description: 'Популярное направление'
            ),
          ];
          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: AppColors.basicGrey3,
                      borderRadius: borderRadius,
                    ),
                    padding: padding,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                controller: startPoint,
                                onChanged: (value) {
                                  context
                                      .read<AirlinesCubit>()
                                      .onStartPointChanged(value);
                                },
                                decoration: InputDecoration(
                                  prefixIconConstraints: boxConstraints,
                                  prefixIcon: const Padding(
                                    padding: EdgeInsets.only(
                                      right: 8.0,
                                    ),
                                    child: AppIcon(Assets.searchPlane,
                                        color: AppColors.basicGrey6),
                                  ),
                                  isDense: true,
                                  fillColor: Colors.white,
                                  hintText: 'Откуда - Москва',
                                  hintStyle: TextStyles.regularBold
                                      .copyWith(color: AppColors.basicGrey6),
                                  border: InputBorder.none,
                                ),
                              ),
                              const Divider(
                                color: AppColors.basicGrey4,
                                thickness: 1,
                              ),
                              TextFormField(
                                controller: endPoint,
                                onChanged: (value) {
                                  context
                                      .read<AirlinesCubit>()
                                      .onEndpointChanged(value);
                                },
                                decoration: InputDecoration(
                                  prefixIconConstraints: boxConstraints,
                                  prefixIcon: const Padding(
                                    padding: EdgeInsets.only(
                                      right: 8.0,
                                    ),
                                    child: AppIcon(Assets.search,
                                        color: AppColors.basicWhite),
                                  ),
                                  suffixIcon: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: EdgeInsets.zero,
                                      elevation: 0,
                                      shadowColor: Colors.transparent,
                                      backgroundColor: Colors.transparent,
                                    ),
                                    onPressed: () {
                                      context.read<AirlinesCubit>().onClear();
                                    },
                                    child: const AppIcon(Assets.clearText,
                                        color: AppColors.basicWhite),
                                  ),
                                  isDense: true,
                                  fillColor: Colors.white,
                                  hintText: 'Куда - Турция',
                                  hintStyle: TextStyles.regularBold
                                      .copyWith(color: AppColors.basicGrey6),
                                  border: InputBorder.none,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: icons
                      .map((e) => Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AppIconButton(
                                onTap: (_) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return const _PlaceHolder();
                                  }));
                                },
                                icon: e.icon,
                                iconBackgroundColor: e.backgroundColor,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                width: 80,
                                height: 40,
                                child: Text(
                                  e.text,
                                  textAlign: TextAlign.center,
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ))
                      .toList(),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: borderRadius,
                        color: AppColors.basicGrey3,
                      ),
                      child: SizedBox(
                        height: 300,
                        child: ListView.builder(
                          itemCount: cards.length,
                          itemBuilder: (context, index) {
                            final card = cards[index];
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  elevation: 0,
                                  color: AppColors.basicGrey3,
                                  shape: const ContinuousRectangleBorder(
                                    borderRadius: borderRadius,
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      context
                                          .read<AirlinesCubit>()
                                          .onEndpointChanged(card.title);
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (BuildContext context) {
                                        return const SearchPage();
                                      }));
                                    },
                                    shape: const ContinuousRectangleBorder(
                                      borderRadius: borderRadius,
                                    ),
                                    leading: ClipRRect(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8)),
                                      child: Image.asset(
                                        card.img,
                                        height: 50,
                                        width: 50,
                                      ),
                                    ),
                                    title: Text(
                                      card.title,
                                      style: TextStyles.regularBold
                                          .copyWith(color: Colors.white),
                                    ),
                                    subtitle: Text(card.description),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  child: Divider(color: Colors.grey),
                                ),
                              ],
                            );
                          },
                        ),
                      )),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    const BorderRadius borderRadius = BorderRadius.all(Radius.circular(16.0));
    const EdgeInsets padding = EdgeInsets.all(16.0);
    final String startPoint = context
        .select<AirlinesCubit, String>((value) => value.state.startPoint);
    final String endPoint =
        context.select<AirlinesCubit, String>((value) => value.state.endPoint);
    return InkWell(
      borderRadius: borderRadius,
      onTap: () {
        showModal(context);
      },
      child: Padding(
        padding: padding,
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: borderRadius,
            color: AppColors.basicGrey3,
          ),
          padding: padding,
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: AppColors.basicBlack.withOpacity(.6),
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
            ], color: AppColors.basicGrey4, borderRadius: borderRadius),
            padding: padding,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                const AppIcon(
                  Assets.search,
                  color: AppColors.basicBlack,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        startPoint == '' ? 'Откуда - Москва' : startPoint,
                        style: TextStyles.regularBold.copyWith(
                            color: startPoint == ''
                                ? AppColors.basicGrey6
                                : AppColors.basicWhite),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: Divider(
                          color: AppColors.basicGrey5,
                          thickness: 2,
                        ),
                      ),
                      Text(
                        endPoint == '' ? 'Куда - Турция' : endPoint,
                        style: TextStyles.regularBold.copyWith(
                            color: endPoint == ''
                                ? AppColors.basicGrey6
                                : AppColors.basicWhite),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PlaceHolder extends StatelessWidget {
  const _PlaceHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.specialBlue,
      ),
      body: const Placeholder(),
    );
  }
}
