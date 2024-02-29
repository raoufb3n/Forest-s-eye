import 'package:flutter/material.dart';

class AppRouter {
  AppRouter() {}

  Route? generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Placeholder());
      default:
        return null;
    }
    

  }
}