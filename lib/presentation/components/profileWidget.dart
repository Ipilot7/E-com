import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    required this.image,
    required this.name,
    required this.subName,
    Key? key,
  }) : super(key: key);
  final String image;
  final String name;
  final String subName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          SvgPicture.asset(
            image,
            color: AppColors.primaryBlue,
          ),
          const SizedBox(width: 16),
          Text(name, style: AppTextStyles.h6),
          const Spacer(),
          Text(subName, style: AppTextStyles.bodyText),
          const SizedBox(width: 16),
          const Icon(Icons.chevron_right_outlined,
              color: AppColors.unactTxtColor)
        ],
      ),
    );
  }
}
