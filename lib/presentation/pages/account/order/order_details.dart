import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/constants.dart';

import 'package:milanas/presentation/components/custom_appbar.dart';
import 'package:milanas/presentation/components/order_details.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    var size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        CustomAppbar(text: 'Order Details'),
        Expanded(
            child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Product', style: AppTextStyles.h5),
                  Column(
                    children: List.generate(
                      2,
                      (index) => OrderDetailWidget(),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text('Shipping Details', style: AppTextStyles.h5),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.neutralLight),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Date Shipping',
                                style: AppTextStyles.bodyText),
                            Text('January 16, 2020')
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Shipping', style: AppTextStyles.bodyText),
                            Text('POS Reggular')
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('No. Resi', style: AppTextStyles.bodyText),
                            Text('000192848573')
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Address', style: AppTextStyles.bodyText),
                            SizedBox(
                                width: width * .5,
                                child: Text(
                                    textAlign: TextAlign.end,
                                    '2727 New  Owerri, Owerri, Imo State 78410'))
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 46),
                  Text('Payment Details', style: AppTextStyles.h5),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.neutralLight),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Items (3)', style: AppTextStyles.bodyText),
                            Text('\$598.86')
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Shipping', style: AppTextStyles.bodyText),
                            Text('\$40.00')
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Import charges',
                                style: AppTextStyles.bodyText),
                            Text('\$128.00')
                          ],
                        ),
                        SizedBox(height: 12),
                        Divider(color: AppColors.unactTxtColor),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Price', style: AppTextStyles.h6),
                            Text(
                              '\$766.86',
                              style: AppTextStyles.categoryMore,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: buttonStyle(
                              color: AppColors.primaryBlue,
                              borderRadius: 5,
                              padding: const EdgeInsets.all(16)),
                          onPressed: () {},
                          child: Text('Notify Me',
                              style: AppTextStyles.buttonText1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                ],
              ),
            )
          ],
        ))
      ]),
    ));
  }
}
