import 'package:flutter/material.dart';
import 'package:milanas/presentation/pages/account/childpages/changename.dart';
import 'package:milanas/presentation/pages/account/childpages/profile.dart';
import 'package:milanas/presentation/pages/childpages/activity.dart';
import 'package:milanas/presentation/pages/childpages/choose_card.dart';
import 'package:milanas/presentation/pages/childpages/favorite.dart';
import 'package:milanas/presentation/pages/childpages/feed.dart';
import 'package:milanas/presentation/pages/childpages/notification.dart';
import 'package:milanas/presentation/pages/childpages/offer.dart';
import 'package:milanas/presentation/pages/childpages/payment_method.dart';
import 'package:milanas/presentation/pages/childpages/product_detail.dart';
import 'package:milanas/presentation/pages/childpages/review_product.dart';
import 'package:milanas/presentation/pages/childpages/skip_to.dart';
import 'package:milanas/presentation/pages/childpages/success_screen.dart';
import 'package:milanas/presentation/pages/childpages/write_review.dart';
import 'package:milanas/presentation/pages/home.dart';
import 'package:milanas/presentation/pages/childpages/login.dart';
import 'package:milanas/presentation/pages/childpages/register.dart';
import 'package:milanas/presentation/pages/offer.dart';
import 'package:milanas/presentation/pages/view_page.dart';

class Routes {
  static const login = '/login';
  static const register = '/register';
  static const viewPage = '/viewPage';
  static const home = '/home';
  static const favorite = '/favorite';
  static const productDetail = '/productDetail';
  static const offerScreen = '/offerScreen';
  static const feed = '/feed';
  static const activity = '/activity';
  static const reviewProduct = '/reviewProduct';
  static const writeReview = '/writeReview';
  static const notificationPage = '/notificationPage';
  static const skipTo = '/skipTo';
  static const paymentMethod = '/paymentMethod';
  static const chooseCard = '/chooseCard';
  static const successScreen = '/successScreen';
  static const profile = '/profile';
  static const changeName = '/changeName';

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
        case offerScreen:
          return MaterialPageRoute(builder: (context) => const OfferScreen());
        case feed:
          return MaterialPageRoute(builder: (context) => const Feed());
        case activity:
          return MaterialPageRoute(builder: (context) => const Activity());
        case skipTo:
          return MaterialPageRoute(builder: (context) => const SkipTo());
        case paymentMethod:
          return MaterialPageRoute(builder: (context) => const PaymentMethod());
        case reviewProduct:
          return MaterialPageRoute(
              builder: (context) => const ReviewProduct()); //Notification
        case chooseCard:
          return MaterialPageRoute(builder: (context) => const ChooseCard());

        case writeReview:
          return MaterialPageRoute(builder: (context) => const WriteReview());
        case notificationPage:
          return MaterialPageRoute(
              builder: (context) => const NotificationPage());
        case successScreen:
          return MaterialPageRoute(builder: (context) => const SuccessScreen());
        case profile:
          return MaterialPageRoute(builder: (context) => const Profile());
        case changeName:
          return MaterialPageRoute(builder: (context) => const ChangeName());

        default:
          return MaterialPageRoute(builder: (context) => const Login());
      }
    } catch (e) {
      return MaterialPageRoute(builder: (context) => const Login());
    }
  }
}
