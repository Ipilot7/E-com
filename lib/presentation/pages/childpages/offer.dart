import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/sale_product.dart';
import 'package:milanas/presentation/components/sale_product_stars.dart';
import 'package:milanas/presentation/components/sale_widget.dart';

class Offer extends StatefulWidget {
  const Offer({super.key});

  @override
  State<Offer> createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: AppColors.neutralLight, width: 1))),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.chevron_left_rounded,
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Super Flash Sale',
                      style: AppTextStyles.h4,
                    ),
                    const Spacer(),
                    SvgPicture.asset(Assets.icons.search)
                  ],
                )),
            const SizedBox(height: 16),
            const SaleTable(),
            Expanded(
              child: GridView.count(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(right: 25, top: 16, left: 9),
                crossAxisCount: 2,
                mainAxisSpacing: 12.0,
                shrinkWrap: true,
                childAspectRatio: 2 / 3,
                children: List.generate(
                  20,
                  (index) {
                    return const SaleProductStarsWidget();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
