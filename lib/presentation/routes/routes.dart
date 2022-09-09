import 'package:flutter/material.dart';
import 'package:milanas/presentation/pages/home.dart';
import 'package:milanas/presentation/pages/login.dart';
import 'package:milanas/presentation/pages/register.dart';

class Routes {
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      Map<String, dynamic>? args =
          routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case login:
          return MaterialPageRoute(builder: (context) => const Login());
        case register:
          return MaterialPageRoute(builder: (context) => const Register());
        case home:
          return MaterialPageRoute(builder: (context) => const Home());

        default:
          return MaterialPageRoute(builder: (context) => const Login());
      }
    } catch (e) {
      return MaterialPageRoute(builder: (context) => const Login());
    }
  }
}
