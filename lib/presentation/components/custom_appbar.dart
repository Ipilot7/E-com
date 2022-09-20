import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    required this.text,
    Key? key,
  }) : super(key: key);
 final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: AppColors.neutralLight, width: 1))),
      child: Row(
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.chevron_left_rounded,
                color: AppColors.unactTxtColor,
                size: 30,
              )),
          const SizedBox(width: 12),
          Text(
            text,
            style: AppTextStyles.h4,
          ),
        ],
      ),
    );
  }
}
