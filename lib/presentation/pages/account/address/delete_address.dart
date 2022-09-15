import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/constants.dart';

class DeleteAddress extends StatefulWidget {
  const DeleteAddress({super.key});

  @override
  State<DeleteAddress> createState() => _DeleteAddressState();
}

class _DeleteAddressState extends State<DeleteAddress> {
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
                  decoration: const BoxDecoration(
                    color: AppColors.primaryRed,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(Assets.icons.check)),
              const SizedBox(height: 16),
              Text(
                'Confirmation',
                style: AppTextStyles.h2ProductNames,
              ),
              const SizedBox(height: 8),
              Text(
                'Are you sure wanna delete address',
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
                        onPressed: () {},
                        child: Text('Delete', style: AppTextStyles.buttonText1),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: buttonStyle(
                            color: Colors.white,
                            borderRadius: 5,
                            padding: const EdgeInsets.all(16)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cancel', style: AppTextStyles.buttonText2),
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
