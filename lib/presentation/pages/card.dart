import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/buy.dart';
import 'package:milanas/presentation/components/constants.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Stack(
      children: [
        Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: AppColors.neutralLight, width: 1))),
              child: Text(
                'Your Card',
                style: AppTextStyles.h4,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  BuyWinget(
                      image: Assets.images.cross,
                      productName: 'Nike Air Zoom Pegasus 36 Miami',
                      price: 299.43),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.7,
                          child: TextField(
                            readOnly: true,
                            style: AppTextStyles.formText,
                            decoration: InputDecoration(
                              labelText: 'Enter cupon',
                              labelStyle: AppTextStyles.bodyText,
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                ),
                                borderSide: BorderSide(
                                  color: AppColors.neutralLight,
                                ),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5),
                                ),
                                borderSide:
                                    BorderSide(color: AppColors.primaryBlue),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ElevatedButton(
                              style: buttonStyle(
                                  borderRadius: 5,
                                  color: AppColors.primaryBlue,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 19)),
                              onPressed: () {},
                              child: Text(
                                'Apply',
                                style: AppTextStyles.h8,
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: AppColors.neutralLight),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Items (3)',
                              style: AppTextStyles.bodyText,
                            ),
                            Text(
                              '\$598.86',
                              style: AppTextStyles.bodyTextNeutral,
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shipping',
                              style: AppTextStyles.bodyText,
                            ),
                            Text(
                              '\$40.00',
                              style: AppTextStyles.bodyTextNeutral,
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Import charges',
                              style: AppTextStyles.bodyText,
                            ),
                            Text(
                              '\$128.00',
                              style: AppTextStyles.bodyTextNeutral,
                            )
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Divider(
                          color: AppColors.unactTxtColor,
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total Price',
                              style: AppTextStyles.h6,
                            ),
                            Text(
                              '\$766.86',
                              style: AppTextStyles.moneyBlue,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )

            //sdsds
          ],
        ),
        Positioned(
          left: 16,
          bottom: 16,
          right: 16,
          child: ElevatedButton(
            style: buttonStyle(
                color: AppColors.primaryBlue,
                borderRadius: 5,
                padding: const EdgeInsets.all(16)),
            onPressed: () {
              Navigator.pushNamed(context, '/skipTo');
            },
            child: Text('Check Out', style: AppTextStyles.buttonText1),
          ),
        ),
      ],
    );
  }
}
