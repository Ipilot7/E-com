import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/config/constants/local_data.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(Assets.images.avatar)),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'James Lawson',
                    style: AppTextStyles.h5,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: List.generate(5, (index) => svgstar),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 16),
          Text(
            'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
            style: AppTextStyles.bodyText,
          ),
          const SizedBox(height: 16),
          Row(
            children: List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Image.asset(Assets.images.crossView),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('December 10, 2016', style: AppTextStyles.caption),
          ),
          SizedBox(
            height: 24,
          )
        ],
      ),
    );
  }
}
