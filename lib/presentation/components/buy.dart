import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';

class BuyWinget extends StatefulWidget {
 const BuyWinget({required this.image, required this.productName, required this.price, super.key});
 final String image;
  final String productName;
 final  double price;

  @override
  State<BuyWinget> createState() => _BuyWingetState();
}

class _BuyWingetState extends State<BuyWinget> {
  bool follow = false;
  int count = 1;
  double price = 299.43;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.neutralLight, width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            widget.image,
            width: 72,
            height: 72,
          ),
          const SizedBox(width: 16),
          Flexible(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                        child: Text(
                      widget.productName,
                      style: AppTextStyles.h6,
                    )),
                    
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
                    SvgPicture.asset(Assets.icons.trash)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '\$${widget.price * count}',
                      style: AppTextStyles.linkSmall,
                    ),
                    Container(
                      height: 24,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.unactTxtColor, width: 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (count != 0 || count > 0) {
                                  count--;
                                }
                              });
                            },
                            child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: const Icon(Icons.remove_outlined,
                                    size: 16, color: AppColors.unactTxtColor)),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            color: AppColors.neutralLight,
                            child: Text(
                              '$count',
                              style: AppTextStyles.bodyText,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                count++;
                              });
                            },
                            child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: const Icon(
                                  Icons.add_outlined,
                                  color: AppColors.unactTxtColor,
                                  size: 16,
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
