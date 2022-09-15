import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/custom_appbar.dart';

class AddPayment extends StatefulWidget {
  const AddPayment({super.key});

  @override
  State<AddPayment> createState() => _AddPaymentState();
}

class _AddPaymentState extends State<AddPayment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(children: [
        CustomAppbar(text: 'Payment'),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/creditCardAndDebit');
          },
          child: ListTile(
            leading: SvgPicture.asset(Assets.icons.payment),
            title: Text('Credit Card Or Debit'),
          ),
        ),
        ListTile(
          leading: SvgPicture.asset(Assets.icons.paypal),
          title: Text('Paypal'),
        ),
        ListTile(
          leading: SvgPicture.asset(Assets.icons.bank),
          title: Text('Bank Transfer'),
        )
      ]),
    ));
    ;
  }
}
