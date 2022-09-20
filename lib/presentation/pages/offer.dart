// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/sale_widget.dart';

class Offer extends StatefulWidget {
  const Offer({super.key});

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  @override
  Widget build(BuildContext context) {
    var size, width;
    size = MediaQuery.of(context).size;
    width = size.width;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: AppColors.neutralLight, width: 1))),
          child: Row(
            children: [
              const SizedBox(width: 12),
              Text(
                'Offer',
                style: AppTextStyles.h4,
              ),
            ],
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.primaryBlue,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * .45,
                    child: Text('Use “MEGSL” Cupon For Get 90%off',
                        style: AppTextStyles.buttonText1),
                  ),
                ],
              ),
            ),
            const SaleTable(),
            const SizedBox(height: 16),
            Center(
              child: Stack(
                children: [
                  Image.asset(Assets.images.recom),
                  Positioned(
                      top: 32,
                      left: 24,
                      child: SizedBox(
                        width: width * .7,
                        child: Text(
                          '90% Off Super Mega Sale',
                          style: AppTextStyles.h2,
                        ),
                      )),
                  Positioned(
                      top: 120,
                      left: 24,
                      child: Text(
                        'Special birthday Lafyuu',
                        style: AppTextStyles.bodyText,
                      )),
                ],
              ),
            ),
          ],
        ))
      ],
    );
  }
}
