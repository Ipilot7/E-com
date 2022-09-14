import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/constants.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 248),
              Container(
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: AppColors.primaryBlue,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(Assets.icons.check)),
              const SizedBox(height: 16),
              Text(
                'Success',
                style: AppTextStyles.h2ProductNames,
              ),
              const SizedBox(height: 8),
              Text(
                'thank you for shopping using lafyuu',
                style: AppTextStyles.bodyText,
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: buttonStyle(
                            color: AppColors.primaryBlue,
                            borderRadius: 5,
                            padding: const EdgeInsets.all(16)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Back To Order',
                            style: AppTextStyles.buttonText1),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
