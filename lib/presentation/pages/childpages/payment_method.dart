import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/custom_appbar.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppbar(text: 'Payment'),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/chooseCard');
              },
              child: ListTile(
                leading: SvgPicture.asset(Assets.icons.payment),
                title: const Text('Credit Card Or Debit'),
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(Assets.icons.paypal),
              title: const Text('Paypal'),
            ),
            ListTile(
              leading: SvgPicture.asset(Assets.icons.bank),
              title: const Text('Bank Transfer'),
            )
          ],
        ),
      ),
    );
  }
}
