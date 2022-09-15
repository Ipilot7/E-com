import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/presentation/components/constants.dart';
import 'package:milanas/presentation/components/custom_appbar.dart';
import 'package:milanas/presentation/pages/account/components/textfield_zero.dart';

class ChangeName extends StatefulWidget {
  const ChangeName({super.key});

  @override
  State<ChangeName> createState() => _ChangeNameState();
}

class _ChangeNameState extends State<ChangeName> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppbar(text: 'Name'),
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'First Name',
                          style: AppTextStyles.h5,
                        ),
                        TextfieldZero(
                          labeltext: 'First Name',
                        ),
                        Text(
                          'Last Name',
                          style: AppTextStyles.h5,
                        ),
                        TextfieldZero(
                          labeltext: 'Last Name',
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 16,
                    bottom: 16,
                    right: 16,
                    child: ElevatedButton(
                      style: buttonStyle(
                          color: AppColors.primaryBlue,
                          borderRadius: 5,
                          padding: const EdgeInsets.all(16)),
                      onPressed: () {},
                      child: Text('Save', style: AppTextStyles.buttonText1),
                    ),
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
