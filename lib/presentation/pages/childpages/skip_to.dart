import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/presentation/components/constants.dart';
import 'package:milanas/presentation/components/skip_to_widget.dart';

class SkipTo extends StatefulWidget {
  const SkipTo({super.key});

  @override
  State<SkipTo> createState() => _SkipToState();
}

class _SkipToState extends State<SkipTo> {
  bool ontap = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom:
                          BorderSide(color: AppColors.neutralLight, width: 1))),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.chevron_left_rounded,
                        color: AppColors.unactTxtColor,
                        size: 30,
                      )),
                  const SizedBox(width: 12),
                  Text(
                    'Skip To',
                    style: AppTextStyles.h4,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.add_outlined,
                    color: AppColors.primaryBlue,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView(
                    children: [
                      Column(
                        children: List.generate(
                          3,
                          (index) => GestureDetector(
                            onTap: () {
                              if (ontap) {
                                setState(() {
                                  ontap = false;
                                });
                              } else {
                                setState(() {
                                  ontap = true;
                                });
                              }
                            },
                            child: SkipToWidget(
                              name: 'Priscekila',
                              text:
                                  '3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',
                              number: '+99 1234567890',
                              ontapCheck: ontap,
                            ),
                          ),
                        ),
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
                        Navigator.pushNamed(context, '/paymentMethod');
                      },
                      child: Text('Next', style: AppTextStyles.buttonText1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
