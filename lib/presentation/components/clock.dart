import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';

class LitleClock extends StatelessWidget {
  const LitleClock({
    required this.hour,
    Key? key,
  }) : super(key: key);
  final String hour;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColors.metalColor.shade10,
          borderRadius: BorderRadius.circular(5)),
      child: Text(
        hour,
        style: AppTextStyles.h4,
      ),
    );
  }
}
