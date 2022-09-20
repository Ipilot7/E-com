import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';
import 'package:milanas/config/constants/assets.dart';
import 'package:milanas/presentation/components/custom_appbar.dart';

class WriteReview extends StatefulWidget {
  const WriteReview({super.key});

  @override
  State<WriteReview> createState() => _WriteReviewState();
}

class _WriteReviewState extends State<WriteReview> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const CustomAppbar(text: 'Write Review'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Please write Overall level of satisfaction with your shipping / Delivery Service',
                      style: AppTextStyles.h5),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Row(
                        children: List.generate(
                            5,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child:
                                      SvgPicture.asset(Assets.icons.starorange),
                                )),
                      ),
                      const Text('4/5'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text('Write Your Review', style: AppTextStyles.h5),
                  const SizedBox(height: 24),
                  TextFormField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                    minLines:
                        6, 
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                  ),
                  Text('Add Photo', style: AppTextStyles.h5),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: AppColors.unactTxtColor, width: 1)),
                    child: const Icon(Icons.add),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
