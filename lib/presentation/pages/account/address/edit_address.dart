import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/presentation/components/constants.dart';
import 'package:milanas/presentation/components/custom_appbar.dart';
import 'package:milanas/presentation/pages/account/components/textfield_zero.dart';

class EditAddress extends StatefulWidget {
  const EditAddress({super.key});

  @override
  State<EditAddress> createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          const CustomAppbar(text: 'Edit Address'),
          Expanded(
              child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Country or region', style: AppTextStyles.h5),
                    TextfieldZero(labeltext: ''),
                    Text('First Name', style: AppTextStyles.h5),
                    TextfieldZero(labeltext: ''),
                    Text('Last Name', style: AppTextStyles.h5),
                    TextfieldZero(labeltext: ''),
                    Text('Street Address', style: AppTextStyles.h5),
                    TextfieldZero(labeltext: ''),
                    Text('Street Address 2 (Optional)',
                        style: AppTextStyles.h5),
                    TextfieldZero(labeltext: ''),
                    Text('City', style: AppTextStyles.h5),
                    TextfieldZero(labeltext: ''),
                    Text('State/Province/Region', style: AppTextStyles.h5),
                    TextfieldZero(labeltext: ''),
                    Text('Zip Code', style: AppTextStyles.h5),
                    TextfieldZero(labeltext: ''),
                    Text('Number', style: AppTextStyles.h5),
                    TextfieldZero(labeltext: ''),
                    Row(
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
                            child: Text('Edit Address',
                                style: AppTextStyles.buttonText1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ))
        ]),
      ),
    );
  }
}
