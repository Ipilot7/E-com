// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/config/constants/local_data.dart';
import 'package:milanas/presentation/components/custom_textfield.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: AppColors.neutralLight, width: 1))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.7,
                child: CustomTextField(
                    svgUrl: Assets.icons.search, labelText: 'Search Product'),
              ),
              GestureDetector(onTap: () {}, child: const Icon(Icons.sort)),
              GestureDetector(onTap: () {}, child: const Icon(Icons.filter_alt_sharp))
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text('Man Fashion', style: AppTextStyles.h5),
                  ),
                  Wrap(
                    runSpacing: 16,
                    spacing: 10,
                    children: List.generate(
                      manFashion.length,
                      (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 12, bottom: 8),
                            padding: const EdgeInsets.all(23),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: AppColors.unactTxtColor)),
                            child: SvgPicture.asset(
                              manFashion[index],
                            ),
                          ),
                          SizedBox(
                              width: width * .2,
                              child: Text(
                                manFashionName[index],
                                textAlign: TextAlign.center,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 24, bottom: 12, left: 16),
                    child: Text('Woman Fashion', style: AppTextStyles.h5),
                  ),
                  Wrap(
                    runSpacing: 16,
                    spacing: 10,
                    children: List.generate(
                      womanFasion.length,
                      (index) => Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 12, bottom: 8),
                            padding: const EdgeInsets.all(23),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: AppColors.unactTxtColor)),
                            child: SvgPicture.asset(
                              womanFasion[index],
                            ),
                          ),
                          SizedBox(
                              width: width * .2,
                              child: Text(
                                womanFashionName[index],
                                textAlign: TextAlign.center,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
