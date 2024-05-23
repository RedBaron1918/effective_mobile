import 'package:effective_mobile/core/enums/enums.dart';
import 'package:effective_mobile/core/theme/theme.dart';
import 'package:effective_mobile/core/widgets/app_widgets.dart';
import 'package:effective_mobile/features/airlines/airline.dart';
import 'package:effective_mobile/features/seach/presentation/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:shimmer/shimmer.dart';

part '../widgets/search_section.dart';
part '../widgets/list_view.dart';
part '../widgets/card.dart';

class Airlines extends StatefulWidget {
  const Airlines({super.key});
  static const String route = '/airline';

  @override
  State<Airlines> createState() => _AirlinesState();
}

class _AirlinesState extends State<Airlines> {
  @override
  void initState() {
    context.read<AirlinesCubit>().init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<OffersEntity> offers =
        context.select<AirlinesCubit, List<OffersEntity>>(
      (value) => value.state.offersList,
    );

    return CustomScrollView(
      slivers: <Widget>[
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 40,
        )),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              textAlign: TextAlign.center,
              'Поиск дешевых авиабилетов',
              style: TextStyles.extraLargeBoldMedium,
            ),
          ),
        ),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 20,
        )),
        const SliverToBoxAdapter(
          child: _SearchSection(),
        ),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 20,
        )),
        SliverToBoxAdapter(
          child: _ListView(
            offersEntity: offers,
            header: 'Музыкально отлететь',
          ),
        ),
        SliverToBoxAdapter(
          child: _ListView(
            offersEntity: offers,
            header: 'Ваш первый раз',
          ),
        ),
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 100,
        )),
      ],
    );
  }
}
