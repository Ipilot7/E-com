abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get appIcon => '$basePath/app_icon.svg';
  String get splashScreenIcon => '$basePath/splash_screen_icon.svg';
  String get bag => '$basePath/bag.svg';
  String get bank => '$basePath/Bank.svg';
  String get bikiniti => '$basePath/bikiniti.svg';
  String get cart => '$basePath/cart.svg';
  String get date => '$basePath/date.svg';
  String get dress => '$basePath/dress.svg';
  String get facebook => '$basePath/facebook.svg';
  String get gender => '$basePath/gender.svg';
  String get google => '$basePath/google.svg';
  String get group => '$basePath/group.svg';
  String get home => '$basePath/home.svg';
  String get list => '$basePath/list.svg';
  String get location => '$basePath/location.svg';
  String get love => '$basePath/love.svg';
  String get lovered => '$basePath/love_red.svg';
  String get manbag => '$basePath/manbag.svg';
  String get manpants => '$basePath/manpants.svg';
  String get manshoes => '$basePath/manshoes.svg';
  String get manunderwear => '$basePath/manunderwear.svg';
  String get message => '$basePath/message.svg';
  String get mic => '$basePath/mic.svg';
  String get notification => '$basePath/notification.svg';
  String get offer => '$basePath/offer.svg';
  String get password => '$basePath/password.svg';
  String get payment => '$basePath/payment.svg';
  String get paypal => '$basePath/paypal.svg';
  String get phone => '$basePath/phone.svg';
  String get search => '$basePath/search.svg';
  String get shirt => '$basePath/shirt.svg';
  String get skirt => '$basePath/skirt.svg';
  String get transaction => '$basePath/transaction.svg';
  String get trash => '$basePath/trash.svg';
  String get user => '$basePath/user.svg';
  String get womanbag => '$basePath/womanbag.svg';
  String get womanpants => '$basePath/womanpants.svg';
  String get womanshoes => '$basePath/womanshoes.svg';
  String get womantshirt => '$basePath/womantshirt.svg';

  // String get appLogoSvg => '$basePath/app_logo_vector.svg';
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get image => "$basePath/image.jpg";
  String get cross => "$basePath/cross.jpg";
  // String get userAvatar1 => "$basePath/icons.jpeg";

}
