import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/presentation/components/constants.dart';
import 'package:milanas/presentation/components/custom_appbar.dart';
import 'package:milanas/presentation/pages/account/components/textfield_zero.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        const CustomAppbar(text: 'Add Address'),
        Expanded(
            child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Country or region', style: AppTextStyles.h5),
                  const TextfieldZero(),
                  Text('First Name', style: AppTextStyles.h5),
                  const TextfieldZero(),
                  Text('Last Name', style: AppTextStyles.h5),
                  const TextfieldZero(),
                  Text('Street Address', style: AppTextStyles.h5),
                  const TextfieldZero(),
                  Text('Street Address 2 (Optional)', style: AppTextStyles.h5),
                  const TextfieldZero(),
                  Text('City', style: AppTextStyles.h5),
                  const TextfieldZero(),
                  Text('State/Province/Region', style: AppTextStyles.h5),
                  const TextfieldZero(),
                  Text('Zip Code', style: AppTextStyles.h5),
                  const TextfieldZero(),
                  Text('Number', style: AppTextStyles.h5),
                  const TextfieldZero(),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: buttonStyle(
                              color: AppColors.primaryBlue, borderRadius: 5, padding: const EdgeInsets.all(16)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Add Address', style: AppTextStyles.buttonText1),
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
    ));
  }
}
