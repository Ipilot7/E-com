import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';

class SaleProductWidget extends StatelessWidget {
  const SaleProductWidget({
    required this.imageSrc,
    required this.crossName,
    required this.price,
    Key? key,
  }) : super(key: key);
  final String? imageSrc;
  final String? crossName;
  final int? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      width: 141,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), border: Border.all(color: AppColors.unactTxtColor, width: 1)),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            imageSrc!,
            height: 140,
          ),
          Text(
            crossName!,
            style: AppTextStyles.h6,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('\$$price', style: AppTextStyles.moneyBlue),
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
