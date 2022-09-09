
import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/clock.dart';

class SaleWidget extends StatelessWidget {
  const SaleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Stack(
          children: [
            Image.asset(
              Assets.images.image,
            ),
            Positioned(
              top: 30,
              left: 20,
              child: Text(
                'Super Flash Sale \n50% Off',
                style: AppTextStyles.h2,
              ),
            ),
            Positioned(
              left: 20,
              bottom: 30,
              child: Row(
                children: [
                  const LitleClock(
                    hour: '08',
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3),
                    child: Text(
                      ':',
                      style: AppTextStyles.h1,
                    ),
                  ),
                  const LitleClock(
                    hour: '08',
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3),
                    child: Text(':', style: AppTextStyles.h1),
                  ),
                  const LitleClock(
                    hour: '08',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}