import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';

class SaleProductStarsWidget extends StatelessWidget {
  const SaleProductStarsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      width: 141,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.unactTxtColor, width: 1)),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(Assets.images.cross),
          Text(
            'FS - Nike Air Max 270 React ..',
            style: AppTextStyles.h6,
          ),
          Row(
              children: List.generate(
                  5, (index) => SvgPicture.asset(Assets.icons.star))),
          SizedBox(height: 5),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('\$299,43', style: AppTextStyles.moneyBlue),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$534',
                style: AppTextStyles.bodyText,
              ),
              Text(
                '24% Off',
                style: AppTextStyles.moneyRed,
              ),
              Container()
            ],
          )
        ],
      ),
    );
  }
}
