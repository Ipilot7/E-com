import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/sale_widget.dart';

List svgList = [
  Assets.icons.manshirt,
  Assets.icons.womanskirt,
  Assets.icons.womandress,
  Assets.icons.manbag,
  Assets.icons.womanbikiniti,
  Assets.icons.manpants,
  Assets.icons.manboots,
  Assets.icons.manunderwear,
  Assets.icons.womanbag,
  Assets.icons.womanpants,
  Assets.icons.womanshoes,
  Assets.icons.womantshirt,
];
List manFashion = [
  Assets.icons.manshirt,
  Assets.icons.manbag,
  Assets.icons.mantshirt,
  Assets.icons.manboots,
  Assets.icons.manpants,
  Assets.icons.manunderwear,
];
List manFashionName = [
  'Man Shirt',
  'Man Work Equipment',
  'Man T-Shirt',
  'Man Shoes',
  'Man Pants',
  'Man Underwear'
];
List womanFashionName = [
  'Dress',
  'Woman T-Shirt',
  'Woman Pants',
  'Skirt',
  'Woman Bag',
  'High Heels',
  'Bikini'
];
List womanFasion = [
  Assets.icons.womandress,
  Assets.icons.womantshirt,
  Assets.icons.womanpants,
  Assets.icons.womanskirt,
  Assets.icons.womanbag,
  Assets.icons.womanshoes,
  Assets.icons.womanbikiniti,
];

List<Widget> listWidget = <Widget>[
  const SaleTable(),
  const SaleTable(),
  const SaleTable(),
  const SaleTable(),
];

List<Widget> imageList = [
  Image.asset(Assets.images.image),
  Image.asset(Assets.images.image),
  Image.asset(Assets.images.image),
  Image.asset(Assets.images.image),
  Image.asset(Assets.images.image),
];
SvgPicture svgstar = SvgPicture.asset(
  Assets.icons.starorange,
  width: 16,
  height: 16,
);
List starsList = [
  const Text('All Review'),
  Row(
    children: [svgstar, const SizedBox(width: 10), const Text('1')],
  ),
  Row(
    children: [svgstar, const SizedBox(width: 10), const Text('2')],
  ),
  Row(
    children: [svgstar, const SizedBox(width: 10), const Text('3')],
  ),
  Row(
    children: [svgstar, const SizedBox(width: 10), const Text('4')],
  ),
  Row(
    children: [svgstar, const SizedBox(width: 10), const Text('5')],
  ),
];
