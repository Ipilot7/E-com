import 'package:flutter/material.dart';

import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';

import 'package:milanas/config/constants/local_data.dart';
import 'package:milanas/presentation/components/constants.dart';
import 'package:milanas/presentation/components/custom_appbar.dart';
import 'package:milanas/presentation/components/review.dart';

class ReviewProduct extends StatefulWidget {
  const ReviewProduct({super.key});

  @override
  State<ReviewProduct> createState() => _ReviewProductState();
}

class _ReviewProductState extends State<ReviewProduct> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                CustomAppbar(
                  text: '5 Review',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
                  child: SizedBox(
                    height: 55,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: starsList.length,
                      itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColors.neutralLight, width: 2),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: starsList[index],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        physics: BouncingScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) => const ReviewWidget())),

                //f
              ],
            ),
            Positioned(
                left: 16,
                right: 16,
                bottom: 16,
                child: ElevatedButton(
                    style: buttonStyle(
                        padding: EdgeInsets.all(16),
                        color: AppColors.primaryBlue,
                        borderRadius: 5),
                    onPressed: () {
                      Navigator.pushNamed(context, '/writeReview');
                    },
                    child: Text(
                      'Write Review',
                      style: AppTextStyles.buttonText1,
                    )))
          ],
        ),
      ),
    );
  }
}
