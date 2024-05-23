import 'package:flutter/material.dart';

class AppNavigation extends StatelessWidget {
  AppNavigation({required this.navigatorKey, required this.child});

  final Widget child;
  final GlobalKey navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            return SafeArea(child: child);
          },
        );
      },
    );
  }
}
