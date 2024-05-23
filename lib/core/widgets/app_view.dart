import 'package:effective_mobile/core/cubit/app_cubit.dart';
import 'package:effective_mobile/core/enums/enums.dart';
import 'package:effective_mobile/core/local_storage/local_storage_impl.dart';
import 'package:effective_mobile/core/local_storage/use_cases.dart';
import 'package:effective_mobile/core/theme/theme.dart';
import 'package:effective_mobile/core/widgets/app_navigation.dart';
import 'package:effective_mobile/core/widgets/app_widgets.dart';
import 'package:effective_mobile/features/airlines/airline.dart';
import 'package:effective_mobile/features/seach/data/datasources/ticket_offers_remote_data_source.dart';
import 'package:effective_mobile/features/seach/data/repositories/ticket_offer_repository_impl.dart';
import 'package:effective_mobile/features/seach/domain/repositories/ticket_offer_repository.dart';
import 'package:effective_mobile/features/seach/domain/usecases/ticket_offer_use_case.dart';
import 'package:effective_mobile/features/seach/presentation/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';

class AppView extends StatefulWidget {
  static const path = '/home';
  static const name = 'app-view';

  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  late final Map<int, Widget> pages;
  Map<int, GlobalKey> navigatorKeys = {
    0: GlobalKey(),
    1: GlobalKey(),
    2: GlobalKey(),
    3: GlobalKey(),
    4: GlobalKey(),
  };
  @override
  void initState() {
    pages = {
      BottomBarTab.airlines.index: MultiBlocProvider(
        providers: [
          BlocProvider<AirlinesCubit>(
            create: (context) {
              final LocalStorage localStorage = context.read<LocalStorage>();
              final OffersRepository repository = OffersRepositoryImpl(
                dataSource: OffersRemoteDataSource(
                  client: Client(),
                ),
              );
              return AirlinesCubit(
                delteTextField: DelteTextField(localStorage),
                setTextField: SetTextField(localStorage),
                getTextField: GetTextField(localStorage),
                getOffersUseCase: GetOffersUseCase(repository),
              );
            },
          ),
          BlocProvider<SearchCubit>(
            create: (context) {
              final TicketOfferRepository repository =
                  TicketOfferRepositoryImpl(
                dataSource: TicketOfferRemoteDataSource(
                  client: Client(),
                ),
              );
              return SearchCubit(
                getTicketsUseCase: GetTicketsUseCase(repository),
                getOffersUseCase: GetTicketOffersUseCase(repository),
              );
            },
          ),
        ],
        child: AppNavigation(
            navigatorKey: navigatorKeys[0]!, child: const Airlines()),
      ),
      BottomBarTab.profile.index: AppNavigation(
          navigatorKey: navigatorKeys[1]!, child: const _Loader()),
      BottomBarTab.hotels.index: AppNavigation(
          navigatorKey: navigatorKeys[2]!, child: const _Loader()),
      BottomBarTab.moreLikeThis.index: AppNavigation(
          navigatorKey: navigatorKeys[3]!, child: const _Loader()),
      BottomBarTab.subscriptions.index: AppNavigation(
          navigatorKey: navigatorKeys[4]!, child: const _Loader()),
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final int index = context.select<AppCubit, int>(
      (cubit) => cubit.state.currentTab.index,
    );

    return WillPopScope(
      onWillPop: () async {
        return !await Navigator.maybePop(
            navigatorKeys[index]!.currentState!.context);
      },
      child: AppScaffold(
        body: IndexedStack(
          index: index,
          children: pages.values.toList(),
        ),
      ),
    );
  }
}

class _Loader extends StatelessWidget {
  const _Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.basicBlack,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppLoadingIndicator(size: 60),
        ],
      ),
    );
  }
}
