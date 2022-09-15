import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/presentation/components/card_widget.dart';
import 'package:milanas/presentation/components/constants.dart';

class ChooseCard extends StatefulWidget {
  const ChooseCard({super.key});

  @override
  State<ChooseCard> createState() => _ChooseCardState();
}

class _ChooseCardState extends State<ChooseCard> {
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
                    'Choose Card',
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
                  Column(
                    children: [const CardWidget()],
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
                        Navigator.pushNamed(context, '/successScreen');
                      },
                      child: Text('Pay \$766.66',
                          style: AppTextStyles.buttonText1),
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
