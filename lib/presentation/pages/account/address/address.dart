import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/presentation/components/constants.dart';
import 'package:milanas/presentation/components/custom_appbar.dart';
import 'package:milanas/presentation/components/skip_to_widget.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  bool ontab = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        CustomAppbar(text: 'Address'),
        Expanded(
          child: Stack(
            children: [
              ListView(
                children: [
                  SkipToWidget(
                    name: 'Priscekila',
                    text:
                        '3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',
                    number: '+99 1234567890',
                    ontapCheck: ontab,
                  ),
                  SkipToWidget(
                    name: 'Priscekila',
                    text:
                        '3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',
                    number: '+99 1234567890',
                    ontapCheck: ontab,
                  )
                ],
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/addAddress');
                  },
                  child: Text('Add Address', style: AppTextStyles.buttonText1),
                ),
              ),
            ],
          ),
        ),
      ]),
    ));
  }
}
