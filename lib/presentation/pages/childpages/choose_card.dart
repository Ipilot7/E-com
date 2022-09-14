import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
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

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.primaryBlue,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 22,
                height: 22,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffC4C4C4),
                ),
              ),
              Container(
                width: 22,
                height: 22,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffC4C4C4),
                ),
              )
            ],
          ),
          const SizedBox(height: 31),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('3333', style: AppTextStyles.h2),
              Text('3333', style: AppTextStyles.h2),
              Text('3333', style: AppTextStyles.h2),
              Text('3333', style: AppTextStyles.h2),
            ],
          ),
          const SizedBox(height: 19),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('CARD HOLDER', style: AppTextStyles.captionNormalBold),
              Text('CARD SAVE', style: AppTextStyles.captionNormalBold),
              Container(),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                'Dominic Ovo',
                style: AppTextStyles.captionWhite,
              ),
              Text('19/2042', style: AppTextStyles.captionWhite)
            ],
          ),
        ],
      ),
    );
  }
}
