import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/presentation/components/sale_product_favorite.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
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
                      'Favorite Product',
                      style: AppTextStyles.h4,
                    ),
                  ],
                )),
            Expanded(
              child: GridView.count(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(right: 25, top: 16, left: 9),
                crossAxisCount: 2,
                mainAxisSpacing: 12.0,
                shrinkWrap: true,
                childAspectRatio: 2 / 3,
                children: List.generate(
                  4,
                  (index) {
                    return const SaleProductFavoriteWidget();
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
