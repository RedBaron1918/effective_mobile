import 'package:effective_mobile/core/cubit/app_cubit.dart';
import 'package:effective_mobile/core/enums/enums.dart';
import 'package:effective_mobile/core/widgets/app_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppScaffold extends StatefulWidget {
  const AppScaffold({
    super.key,
    this.color,
    required this.body,
  });

  final Widget body;
  final Color? color;

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BlocSelector<AppCubit, AppState, BottomBarTab>(
          selector: (state) {
            return state.currentTab;
          },
          builder: (context, currentTab) {
            return AppBottomBar(
              onPressed: (s) {
                context.read<AppCubit>().changeTab(s);
              },
              currentTab: currentTab,
            );
          },
        ),
        extendBody: true,
        body: SafeArea(child: widget.body));
  }
}
