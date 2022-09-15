import 'package:flutter/material.dart';
import 'package:milanas/presentation/pages/account/order/order.dart';
import 'package:milanas/presentation/pages/account/order/order_details.dart';
import 'package:milanas/presentation/pages/account/address/add_address.dart';
import 'package:milanas/presentation/pages/account/address/address.dart';
import 'package:milanas/presentation/pages/account/address/delete_address.dart';
import 'package:milanas/presentation/pages/account/address/edit_address.dart';
import 'package:milanas/presentation/pages/account/payment/add_card.dart';
import 'package:milanas/presentation/pages/account/payment/add_payment.dart';
import 'package:milanas/presentation/pages/account/payment/credit_and_debit.dart';
import 'package:milanas/presentation/pages/account/profile.dart/childpages/birthday.dart';
import 'package:milanas/presentation/pages/account/profile.dart/childpages/change_password.dart';
import 'package:milanas/presentation/pages/account/profile.dart/childpages/changename.dart';
import 'package:milanas/presentation/pages/account/profile.dart/childpages/email.dart';
import 'package:milanas/presentation/pages/account/profile.dart/childpages/gender.dart';
import 'package:milanas/presentation/pages/account/profile.dart/childpages/phone_number.dart';
import 'package:milanas/presentation/pages/account/profile.dart/profile.dart';
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
  static const changePassword = '/changePassword';
  static const gender = '/gender';
  static const birthday = '/birthday';
  static const email = '/email';
  static const phoneNumber = '/phoneNumber';
  static const order = '/order';
  static const orderDetails = '/orderDetails';
  static const address = '/address';
  static const addAddress = '/addAddress';
  static const editAddress = '/editAddress';
  static const deleteAddress = '/deleteAddress';
  static const creditCardAndDebit = '/creditCardAndDebit';
  static const addPayment = '/addPayment';
  static const addCard = '/addCard';

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
          return MaterialPageRoute(builder: (context) => const ReviewProduct());
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
        case gender:
          return MaterialPageRoute(builder: (context) => const Gender());
        case birthday:
          return MaterialPageRoute(builder: (context) => const Birthday());
        case email:
          return MaterialPageRoute(builder: (context) => const Email());
        case phoneNumber:
          return MaterialPageRoute(builder: (context) => const PhoneNumber());
        case changePassword:
          return MaterialPageRoute(
              builder: (context) => const ChangePassword());
        case order:
          return MaterialPageRoute(builder: (context) => const Order());
        case orderDetails:
          return MaterialPageRoute(builder: (context) => const OrderDetails());
        case address:
          return MaterialPageRoute(builder: (context) => const Address());
        case addAddress:
          return MaterialPageRoute(builder: (context) => const AddAddress());
        case deleteAddress:
          return MaterialPageRoute(builder: (context) => const DeleteAddress());
        case editAddress:
          return MaterialPageRoute(builder: (context) => const EditAddress());
        case creditCardAndDebit:
          return MaterialPageRoute(
              builder: (context) => const CreditCardAndDebit());
        case addPayment:
          return MaterialPageRoute(builder: (context) => const AddPayment());
           case addCard:
          return MaterialPageRoute(builder: (context) => const AddCard());
        default:
          return MaterialPageRoute(builder: (context) => const Login());
      }
    } catch (e) {
      return MaterialPageRoute(builder: (context) => const Login());
    }
  }
}
