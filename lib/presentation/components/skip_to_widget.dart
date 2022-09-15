import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/constants.dart';

class SkipToWidget extends StatelessWidget {
  SkipToWidget({
    required this.name,
    required this.text,
    required this.number,
    Key? key,
  }) : super(key: key);
  String name;
  String text;
  String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.neutralLight),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Priscekila', style: AppTextStyles.h5),
          const SizedBox(height: 16),
          Text(
            '3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',
            style: AppTextStyles.bodyText,
          ),
          const SizedBox(height: 16),
          Text('+99 1234567890', style: AppTextStyles.bodyText),
          const SizedBox(height: 16),
          Row(
            children: [
              ElevatedButton(
                  style: buttonStyle(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 16),
                      color: AppColors.primaryBlue,
                      borderRadius: 5),
                  onPressed: () {
                    Navigator.pushNamed(context, '/editAddress');
                  },
                  child: Text(
                    'Edit',
                    style: AppTextStyles.buttonText1,
                  )),
              const SizedBox(width: 24),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/deleteAddress');
                },
                child: SvgPicture.asset(Assets.icons.trash),
              ),
            ],
          )
        ],
      ),
    );
  }
}
