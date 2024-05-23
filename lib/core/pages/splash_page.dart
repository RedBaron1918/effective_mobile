import 'package:effective_mobile/core/local_storage/local_storage_impl.dart';
import 'package:effective_mobile/core/theme/theme.dart';
import 'package:effective_mobile/core/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    super.key,
  });

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft
    ]);
    context.read<LocalStorage>().init();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      _init();
      Navigator.of(context).pushReplacementNamed(AppView.path);
    });
  }

  void _init() async {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
  }

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
