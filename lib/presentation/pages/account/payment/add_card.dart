// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/presentation/components/constants.dart';
import 'package:milanas/presentation/components/custom_appbar.dart';
import 'package:milanas/presentation/pages/account/components/textfield_zero.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    var size, width;
    size = MediaQuery.of(context).size;
    width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppbar(text: 'Add Card'),
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Card Number', style: AppTextStyles.h5),
                        TextfieldZero(labeltext: ''),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Expiration Date', style: AppTextStyles.h5),
                            Text('Security Code', style: AppTextStyles.h5),
                            const SizedBox()
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                                width: width * .438,
                                child: TextfieldZero(labeltext: '')),
                            SizedBox(
                                width: width * .438,
                                child: TextfieldZero(labeltext: '')),
                          ],
                        ),
                        Text('Card Holder', style: AppTextStyles.h5),
                        TextfieldZero(labeltext: ''),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: ElevatedButton(
                      style: buttonStyle(
                          color: AppColors.primaryBlue,
                          borderRadius: 5,
                          padding: const EdgeInsets.all(16)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/cardData');
                      },
                      child: Text('Add Card', style: AppTextStyles.buttonText1),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
