import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/assets.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryBlue,
        body: Center(
          child: SvgPicture.asset(Assets.icons.splashScreenIcon),
        ));
  }
}
