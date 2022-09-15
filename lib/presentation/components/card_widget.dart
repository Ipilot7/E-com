import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.primaryBlue,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 22,
                height: 22,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffC4C4C4),
                ),
              ),
              Container(
                width: 22,
                height: 22,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffC4C4C4),
                ),
              )
            ],
          ),
          const SizedBox(height: 31),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('3333', style: AppTextStyles.h2),
              Text('3333', style: AppTextStyles.h2),
              Text('3333', style: AppTextStyles.h2),
              Text('3333', style: AppTextStyles.h2),
            ],
          ),
          const SizedBox(height: 19),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('CARD HOLDER', style: AppTextStyles.captionNormalBold),
              Text('CARD SAVE', style: AppTextStyles.captionNormalBold),
              Container(),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                'Dominic Ovo',
                style: AppTextStyles.captionWhite,
              ),
              Text('19/2042', style: AppTextStyles.captionWhite)
            ],
          ),
        ],
      ),
    );
  }
}
