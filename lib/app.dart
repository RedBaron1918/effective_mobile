import 'package:effective_mobile/core/cubit/app_cubit.dart';
import 'package:effective_mobile/core/local_storage/local_storage_impl.dart';
import 'package:effective_mobile/core/pages/splash_page.dart';
import 'package:effective_mobile/core/theme/theme.dart';
import 'package:effective_mobile/core/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final LocalStorage _localStorage = HiveLocalStorage();
    return RepositoryProvider.value(
      value: _localStorage,
      child: BlocProvider<AppCubit>(
        create: (context) => AppCubit(),
        child: MaterialApp(
          routes: {
            '/': (context) => const SplashPage(),
            '/home': (context) => const AppView(),
          },
          theme: ThemeData(
              fontFamily: 'SfPro',
              scaffoldBackgroundColor: AppColors.basicBlack,
              textTheme: Theme.of(context).textTheme.apply(
                    bodyColor: Colors.white,
                    displayColor: Colors.white,
                  )),
        ),
      ),
    );
  }
}
