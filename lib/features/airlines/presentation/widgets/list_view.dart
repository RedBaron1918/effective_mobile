part of '../pages/airlines.dart';

class _ListView extends StatelessWidget {
  const _ListView({required this.offersEntity, required this.header});

  final List<OffersEntity> offersEntity;
  final String header;

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      Assets.card1,
      Assets.card2,
      Assets.card3,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: BlocSelector<AirlinesCubit, AirlinesState, Status>(
        selector: (state) {
          return state.status;
        },
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: state == Status.loading
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Shimmer.fromColors(
                        baseColor: const Color.fromARGB(255, 31, 31, 31)
                            .withOpacity(.6),
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          height: 20,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                        ),
                      ),
                      SizedBox(
                        key: const ValueKey(Status.loading),
                        height: 240,
                        child: Shimmer.fromColors(
                          baseColor: const Color.fromARGB(255, 31, 31, 31)
                              .withOpacity(.6),
                          highlightColor: Colors.grey[100]!,
                          period: const Duration(seconds: 2),
                          child: ListView.separated(
                            separatorBuilder: (context, index) =>
                                const SizedBox(width: 10.0),
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                : state == Status.success
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            header,
                            style: TextStyles.extraLargeBoldMedium,
                          ),
                          SizedBox(
                            key: const ValueKey(Status.success),
                            height: 240,
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const SizedBox(width: 10.0),
                              scrollDirection: Axis.horizontal,
                              itemCount: offersEntity.length,
                              itemBuilder: (BuildContext context, int index) {
                                final OffersEntity offer = offersEntity[index];
                                return _Card(
                                  image: images[index],
                                  label: offer.title,
                                  subLabel: offer.town,
                                  price: offer.price.value!,
                                );
                              },
                            ),
                          ),
                        ],
                      )
                    : const Text('failed', key: ValueKey(Status.failure)),
          );
        },
      ),
    );
  }
}
