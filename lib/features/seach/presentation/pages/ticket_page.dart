import 'package:effective_mobile/core/theme/theme.dart';
import 'package:effective_mobile/core/widgets/app_widgets.dart';
import 'package:effective_mobile/features/airlines/airline.dart';
import 'package:effective_mobile/features/seach/domain/entities/ticket_entity.dart';
import 'package:effective_mobile/features/seach/presentation/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class TicketPage extends StatefulWidget {
  const TicketPage({super.key});

  @override
  State<TicketPage> createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  void initState() {
    context.read<SearchCubit>().getTickets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<TicketEntity> tickets =
        context.select<SearchCubit, List<TicketEntity>>(
      (value) => value.state.tickets,
    );

    final String departure = context.read<AirlinesCubit>().state.startPoint;
    final String arrival = context.read<AirlinesCubit>().state.endPoint;

    return Stack(alignment: Alignment.center, children: [
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              color: AppColors.basicGrey2,
              child: Row(
                children: [
                  AppIconButton(
                    iconColor: AppColors.specialBlue,
                    iconBackgroundColor: Colors.transparent,
                    icon: Assets.arrowBack,
                    onTap: (_) {
                      Navigator.of(context).pop();
                    },
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$departure-$arrival',
                        style: TextStyles.regularBold,
                      ),
                      Text(
                        "${DateFormat('d MMM').format(DateTime.now())}, 1 пассажир",
                        style: TextStyles.smallMedium
                            .copyWith(color: AppColors.basicGrey6),
                      )
                    ],
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: tickets.map((ticket) => _Card(data: ticket)).toList(),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 10,
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.specialBlue,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                // AppIconButton(
                //   iconBackgroundColor: Colors.transparent,
                //   icon: Assets.filter,
                //   onTap: (_) {},
                //   label: (prefix: null, sufix: 'yleo'),
                // ),

                MaterialButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const AppIcon(Assets.filter),
                      Text(
                        'Фильтр',
                        style: TextStyles.small.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const AppIcon(Assets.vector),
                      Text(
                        'График цен',
                        style: TextStyles.small.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}

class _Card extends StatefulWidget {
  const _Card({required this.data});
  final TicketEntity data;

  @override
  State<_Card> createState() => _CardState();
}

class _CardState extends State<_Card> {
  @override
  Widget build(BuildContext context) {
    String departureTime =
        "${widget.data.departure.date.hour.toString().padLeft(2, '0')}:${widget.data.departure.date.minute.toString().padLeft(2, '0')}";
    String arrivalTime =
        "${widget.data.arrival.date.hour.toString().padLeft(2, '0')}:${widget.data.arrival.date.minute.toString().padLeft(2, '0')}";
    Duration duration =
        widget.data.arrival.date.difference(widget.data.departure.date);
    double durationInHours = duration.inMinutes / 60.0;
    double truncatedDuration = (durationInHours * 10).truncateToDouble() / 10;
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(15),
          child: InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                  color: AppColors.basicGrey1,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${widget.data.price?.value} ₽",
                    style: TextStyles.extraLargeBold,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.only(top: 10),
                                decoration: const BoxDecoration(
                                    color: AppColors.specialRed,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                '$departureTime - $arrivalTime',
                                style: TextStyles.smallMedium,
                              ),
                            ],
                          ),
                          Text(
                            '$truncatedDurationч в пути${widget.data.hasTransfer ? '' : ' / Без пересадок'}',
                            style: TextStyles.small,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 33),
                        child: Row(
                          children: [
                            Text(widget.data.departure.airport,
                                style: TextStyles.smallMedium
                                    .copyWith(color: AppColors.basicGrey6)),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              widget.data.arrival.airport,
                              style: TextStyles.smallMedium
                                  .copyWith(color: AppColors.basicGrey6),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        if (widget.data.badge != null)
          Positioned(
            top: 5,
            left: 15,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColors.specialBlue,
              ),
              child: Text(
                '${widget.data.badge}',
                style: TextStyles.smallMedium,
              ),
            ),
          )
      ],
    );
  }
}
