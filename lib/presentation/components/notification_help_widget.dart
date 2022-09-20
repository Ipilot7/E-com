import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';


class NotificationsWidget extends StatelessWidget {
  const NotificationsWidget({required this.icon,
    required this.typeNotification,
    required this.countNotifications,
    Key? key,
  }) : super(key: key);
  final String icon;
  final String typeNotification;
  final String countNotifications;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: SvgPicture.asset(
          icon,
          color: AppColors.primaryBlue,
          width: 24,
        ),
        title: Text(typeNotification, style: AppTextStyles.h6),
        trailing: Container(
          width: 20,
          height: 20,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.primaryRed),
          child: Center(
              child: Text(
            countNotifications,
            style: AppTextStyles.captionWhite,
          )),
        ));
  }
}
