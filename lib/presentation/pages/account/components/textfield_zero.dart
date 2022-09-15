import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';
import 'package:milanas/config/constants/app_text_styles.dart';

class TextfieldZero extends StatelessWidget {
  TextfieldZero({
    required this.labeltext,
    Key? key,
  }) : super(key: key);
  String labeltext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextField(
        readOnly: true,
        style: AppTextStyles.formText,
        decoration: InputDecoration(
          labelText: labeltext,
          labelStyle: AppTextStyles.bodyText,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              topLeft: Radius.circular(5),
            ),
            borderSide: BorderSide(
              color: AppColors.neutralLight,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5),
              topLeft: Radius.circular(5),
            ),
            borderSide: BorderSide(color: AppColors.primaryBlue),
          ),
        ),
      ),
    );
  }
}
