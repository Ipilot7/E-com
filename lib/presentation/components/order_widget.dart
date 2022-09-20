import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({
    required this.generatedCode,
    required this.orderDate,
    required this.orderStatus,
    required this.items,
    required this.price,
    Key? key,
  }) : super(key: key);
  final String generatedCode;
  final String orderDate;
  final String orderStatus;
  final String items;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.unactTxtColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(generatedCode, style: AppTextStyles.h5),
          const SizedBox(height: 12),
          Text('Order at E-comm : $orderDate', style: AppTextStyles.bodyText),
          const SizedBox(height: 12),
          const Divider(
            color: AppColors.unactTxtColor,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Order Status', style: AppTextStyles.bodyText),
              Text(orderStatus, style: AppTextStyles.bodyTextNeutral),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Items', style: AppTextStyles.bodyText),
              Text(items, style: AppTextStyles.bodyTextNeutral),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Price', style: AppTextStyles.bodyText),
              Text(
                price,
                style: AppTextStyles.categoryMore,
              )
            ],
          )
        ],
      ),
    );
  }
}
