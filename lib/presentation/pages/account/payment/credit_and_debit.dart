import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/presentation/components/card_widget.dart';
import 'package:milanas/presentation/components/constants.dart';
import 'package:milanas/presentation/components/custom_appbar.dart';

class CreditCardAndDebit extends StatefulWidget {
  const CreditCardAndDebit({super.key});

  @override
  State<CreditCardAndDebit> createState() => _CreditCardAndDebitState();
}

class _CreditCardAndDebitState extends State<CreditCardAndDebit> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppbar(text: 'Credit Card And Debit'),
            Expanded(
              child: Stack(
                children: [
                  Column(
                    children: [CardWidget()],
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
                        Navigator.pushNamed(context, '/addCard');
                      },
                      child: Text('Add Card', style: AppTextStyles.buttonText1),
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
