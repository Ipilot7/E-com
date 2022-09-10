import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/constants.dart';
import 'package:milanas/presentation/components/custom_textfield.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 111, bottom: 16),
              child: SvgPicture.asset(Assets.icons.appIcon),
            ),
            Text(
              'Let`s Get Started',
              style: AppTextStyles.h4,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 28),
              child: Text(
                'Create on new account',
                style: AppTextStyles.bodyText,
              ),
            ),
            CustomTextField(svgUrl: Assets.icons.user, labelText: 'Full Name'),
            const SizedBox(height: 8),
            CustomTextField(
                svgUrl: Assets.icons.message, labelText: 'Your Email'),
            const SizedBox(height: 8),
            CustomTextField(
                svgUrl: Assets.icons.password, labelText: 'Password'),
            const SizedBox(height: 8),
            CustomTextField(
                svgUrl: Assets.icons.password, labelText: 'Password Again'),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: buttonStyle(
                          color: AppColors.primaryBlue,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          borderRadius: 5),
                      onPressed: () {
                        Navigator.pushNamed(context, '/viewPage');
                      },
                      child: Text(
                        'Sing Up',
                        style: AppTextStyles.buttonText1,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Have a account?",
                  style: AppTextStyles.bodyText,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(' Sign In', style: AppTextStyles.linkSmall))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
