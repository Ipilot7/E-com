// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';

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
   var size, width;
    size = MediaQuery.of(context).size;
    width = size.width;
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        const CustomAppbar(text: 'Order Details'),
        Expanded(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Product', style: AppTextStyles.h5),
                  Column(
                    children: List.generate(
                      2,
                      (index) => const OrderDetailWidget(),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text('Shipping Details', style: AppTextStyles.h5),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    padding: const EdgeInsets.all(16),
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
                            const Text('January 16, 2020')
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Shipping', style: AppTextStyles.bodyText),
                            const Text('POS Reggular')
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('No. Resi', style: AppTextStyles.bodyText),
                            const Text('000192848573')
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Address', style: AppTextStyles.bodyText),
                            SizedBox(
                                width: width * .5,
                                child: const Text(
                                    textAlign: TextAlign.end,
                                    '2727 New  Owerri, Owerri, Imo State 78410'))
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 46),
                  Text('Payment Details', style: AppTextStyles.h5),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    padding: const EdgeInsets.all(16),
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
                            const Text('\$598.86')
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Shipping', style: AppTextStyles.bodyText),
                            const Text('\$40.00')
                          ],
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Import charges',
                                style: AppTextStyles.bodyText),
                            const Text('\$128.00')
                          ],
                        ),
                        const SizedBox(height: 12),
                        const Divider(color: AppColors.unactTxtColor),
                        const SizedBox(height: 12),
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
                  const SizedBox(height: 16),
                ],
              ),
            )
          ],
        ))
      ]),
    ));
  }
}
