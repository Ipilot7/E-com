import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.svgUrl,
    required this.labelText,
    Key? key,
  }) : super(key: key);
  String svgUrl;
  String labelText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      style: AppTextStyles.formText,
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(16),
          child: SvgPicture.asset(svgUrl),
        ),
        labelText: labelText,
        labelStyle: AppTextStyles.bodyText,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(
            color: AppColors.neutralLight,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          borderSide: BorderSide(color: AppColors.primaryBlue),
        ),
      ),
    );
  }
}
