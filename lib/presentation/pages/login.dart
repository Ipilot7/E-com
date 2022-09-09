import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/constants.dart';
import 'package:milanas/presentation/components/custom_textfield.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(top: 68, bottom: 16),
              child: SvgPicture.asset(Assets.icons.appIcon),
            ),
            Text('Welcome to E-com', style: AppTextStyles.h4),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 28),
              child: Text('Sing in to continue', style: AppTextStyles.bodyText),
            ),
            CustomTextField(
              svgUrl: Assets.icons.message,
              labelText: 'Your Email',
            ),
            const SizedBox(height: 8),
            CustomTextField(
              svgUrl: Assets.icons.password,
              labelText: 'Password',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        style: buttonStyle(
                            color: AppColors.primaryBlue,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            borderRadius: 5),
                        onPressed: () {},
                        child: Text(
                          'Sing In',
                          style: AppTextStyles.buttonText1,
                        )),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Flexible(
                  child: Divider(
                    thickness: 1,
                    indent: 0,
                    endIndent: 21,
                    color: AppColors.neutralLight,
                  ),
                ),
                Text(
                  'OR',
                  style: AppTextStyles.buttonText2,
                ),
                const Flexible(
                  child: Divider(
                    thickness: 1,
                    indent: 21,
                    endIndent: 0,
                    color: AppColors.neutralLight,
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: 8, top: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.neutralLight),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    fit: BoxFit.cover,
                    'assets/icons/google.svg',
                  ),
                  Text(
                    'Login with Google',
                    style: AppTextStyles.buttonText2,
                  ),
                  Container()
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: AppColors.neutralLight),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(Assets.icons.facebook),
                  Text(
                    'Login with Facebook',
                    style: AppTextStyles.buttonText2,
                  ),
                  Container()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: Text(
                'Forgot Password?',
                style: AppTextStyles.linkSmall,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have a account? ",
                  style: AppTextStyles.bodyText,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text('Register', style: AppTextStyles.linkSmall))
              ],
            )
          ]),
        ),
      ),
    );
  }
}
