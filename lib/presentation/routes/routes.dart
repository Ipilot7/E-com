import 'package:flutter/material.dart';
import 'package:milanas/presentation/pages/childpages/favorite.dart';
import 'package:milanas/presentation/pages/childpages/offer.dart';
import 'package:milanas/presentation/pages/childpages/product_detail.dart';
import 'package:milanas/presentation/pages/home.dart';
import 'package:milanas/presentation/pages/childpages/login.dart';
import 'package:milanas/presentation/pages/childpages/register.dart';
import 'package:milanas/presentation/pages/view_page.dart';

class Routes {
  static const login = '/login';
  static const register = '/register';
  static const viewPage = '/viewPage';
  static const home = '/home';
  static const favorite = '/favorite';
  static const productDetail = '/productDetail';
  static const offer = '/offer';

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
        case viewPage:
          return MaterialPageRoute(builder: (context) => const ViewPage());
        case home:
          return MaterialPageRoute(builder: (context) => const Home());
        case favorite:
          return MaterialPageRoute(builder: (context) => const Favorite());
        case productDetail:
          return MaterialPageRoute(builder: (context) => const ProductDetail());
          case offer:
          return MaterialPageRoute(builder: (context) => const Offer());

        default:
          return MaterialPageRoute(builder: (context) => const Login());
      }
    } catch (e) {
      return MaterialPageRoute(builder: (context) => const Login());
    }
  }
}
