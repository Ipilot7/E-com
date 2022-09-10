import 'package:flutter/material.dart';
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
