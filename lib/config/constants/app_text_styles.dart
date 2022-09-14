import 'package:flutter/material.dart';
import 'package:milanas/config/constants/app_colors.dart';

abstract class AppTextStyles {
  const AppTextStyles._();

  static const String fontFamily = 'Poppins';

  static TextStyle h1 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.normal,
      fontSize: 20.0,
      color: AppColors.metalColor.shade10);
  static TextStyle h2 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 24.0,
      color: AppColors.metalColor.shade10);
  static TextStyle h2ProductNames = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 24.0,
      color: AppColors.productNames);

  static TextStyle h3 = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 20.0,
      color: AppColors.productNames);
  static TextStyle h3Blue = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 20.0,
      color: AppColors.primaryBlue);

  static TextStyle h4 = const TextStyle(
      fontFamily: fontFamily,
      wordSpacing: 0.5,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 16.0,
      color: AppColors.productNames);

  static TextStyle h5 = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 14.0,
      color: AppColors.productNames);

  static TextStyle h6 = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 12.0,
      color: AppColors.productNames);

  static TextStyle h7 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      fontSize: 18.0,
      color: AppColors.metalColor.shade100);

  static TextStyle h8 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 12.0,
      color: AppColors.metalColor.shade10);

  static TextStyle b1Medium = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
      fontSize: 17.0,
      color: AppColors.metalColor.shade100);

  static TextStyle b1Regular = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 17.0,
      color: AppColors.metalColor.shade100);

  static TextStyle captionNormalRegular = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 10.0,
      color: AppColors.productNames);

  static TextStyle captionWhite = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 10.0,
      color: AppColors.metalColor.shade10);

  static TextStyle captionNormalBold = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 10.0,
      color: AppColors.unactTxtColor);

  static TextStyle starMark = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 10.0,
      color: AppColors.unactTxtColor);

  static TextStyle moneyRed = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 10.0,
      color: AppColors.primaryRed);

  static TextStyle moneyBlue = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 12.0,
      color: AppColors.primaryBlue);

  static TextStyle caption = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 10.0,
      color: AppColors.unactTxtColor);

  static TextStyle formText = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 12.0,
      color: AppColors.unactTxtColor);

  static TextStyle categoryMore = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 14.0,
      color: AppColors.primaryBlue);

  static TextStyle linkSmall = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 12.0,
      color: AppColors.primaryBlue);

  static TextStyle bodyText = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 12.0,
      color: AppColors.unactTxtColor);
  static TextStyle bodyTextNeutral = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontSize: 12.0,
      color: AppColors.productNames);

  static TextStyle buttonText1 = TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 14.0,
      color: AppColors.metalColor.shade10);
  static TextStyle buttonText2 = const TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontSize: 14.0,
      color: AppColors.unactTxtColor);
}
