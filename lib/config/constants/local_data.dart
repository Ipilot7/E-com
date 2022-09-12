import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/sale_widget.dart';

List svgList = [
  Assets.icons.shirt,
  Assets.icons.skirt,
  Assets.icons.bag,
  Assets.icons.dress,
  Assets.icons.manbag,
  Assets.icons.bikiniti,
  Assets.icons.manpants,
  Assets.icons.manshoes,
  Assets.icons.manunderwear,
  Assets.icons.womanbag,
  Assets.icons.womanpants,
  Assets.icons.womanshoes,
  Assets.icons.womantshirt,
];
List<Widget> listWidget = <Widget>[
  SaleTable(),
  SaleTable(),
  SaleTable(),
  SaleTable(),
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
