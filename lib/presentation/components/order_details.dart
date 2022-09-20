import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';

class OrderDetailWidget extends StatefulWidget {
  const OrderDetailWidget({super.key});

  @override
  State<OrderDetailWidget> createState() => _OrderDetailWidgetState();
}

class _OrderDetailWidgetState extends State<OrderDetailWidget> {
  bool follow = false;
  int count = 1;
  double price = 299.43;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.neutralLight, width: 1)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            Assets.images.cross,
            width: 72,
            height: 72,
          ),
          const SizedBox(width: 16),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        'widget.productName',
                        style: AppTextStyles.h6,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (follow) {
                              follow = false;
                            } else {
                              follow = true;
                            }
                          });
                        },
                        child: follow
                            ? SvgPicture.asset(Assets.icons.lovered)
                            : SvgPicture.asset(Assets.icons.love)),
                  ],
                ),
                const SizedBox(height: 18),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    '\$${price * count}',
                    style: AppTextStyles.linkSmall,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
