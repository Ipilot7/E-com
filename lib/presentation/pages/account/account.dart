import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  List acount = [
    Assets.icons.user,
    Assets.icons.order,
    Assets.icons.location,
    Assets.icons.payment
  ];
  List accountNames = [
    'Profile',
    'Order',
    'Address',
    'Payment',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: AppColors.neutralLight, width: 1))),
          child: Text(
            'Account',
            style: AppTextStyles.h4,
          ),
        ),
        Column(
          children: List.generate(
            acount.length,
            (index) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.pushNamed(context, '/profile');
                      break;
                    case 1:
                      Navigator.pushNamed(context, '/order');
                      break;
                    case 2:
                      Navigator.pushNamed(context, '/address');
                      break;
                    case 3:
                      Navigator.pushNamed(context, '/addPayment');
                      break;
                  }
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      acount[index],
                      width: 24,
                    ),
                    const SizedBox(width: 16),
                    Text(accountNames[index])
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
