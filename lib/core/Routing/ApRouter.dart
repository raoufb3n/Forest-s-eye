import 'package:ainechack/core/helpers/commonLibs.dart';
import 'package:ainechack/features/Auth/view/LoginScreenView.dart';
import 'package:flutter/material.dart';

class AppRouter {
  AppRouter() {}

  Route? generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(builder: (_) =>const LoginScreenView());
      default:
        return null;
    }
    

  }
}