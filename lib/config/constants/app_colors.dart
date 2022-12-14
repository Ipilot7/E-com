import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors._();

  static const Color primaryBlue = Color(0xff40BFFF);
  static const Color unactTxtColor = Color(0xff9098B1);
  static const Color productNames = Color(0xff223263);
  static const Color primaryRed = Color(0xffFB7181);
  static const Color starColor = Color(0xffFFC833);
  static const Color neutralLight = Color(0xffEBF0FF);

  static PrimaryColor primaryLight = const PrimaryColor(
    0xFF16A249,
    <int, Color>{
      100: Color(0xFF16A249),
      50: Color(0xFFF2FDF5),
    },
  );

  static BaseColor baseLight = BaseColor(
    0xFF16A249,
    <int, Color>{
      100: Colors.white,
      50: const Color(0xFFF4F4F4),
      80: Colors.white.withOpacity(.8),
      40: Colors.white.withOpacity(.4),
      20: Colors.white.withOpacity(.2),
      60: Colors.white.withOpacity(.6),
    },
  );

  static MetalColor metalColor = MetalColor();
}

class BaseColor extends ColorSwatch<int> {
  const BaseColor(super.primary, super.swatch);

  Color get shade100 => this[100]!;

  Color get shade50 => this[50]!;

  Color get shade40 => this[40]!;

  Color get shade80 => this[80]!;

  Color get shade20 => this[20]!;

  Color get shade60 => this[60]!;
}

class PrimaryColor extends ColorSwatch<int> {
  const PrimaryColor(super.primary, super.swatch);

  Color get shade100 => this[100]!;

  Color get shade50 => this[50]!;
}

class MetalColor extends ColorSwatch<int> {
  MetalColor()
      : super(
          0xff111827,
          <int, Color>{
            // 200: const Color(0xffE5E7EB),
            100: const Color(0xff111827),
            90: const Color(0xff111827),
            70: const Color(0xff111827).withOpacity(.7),
            50: const Color(0xff6B7280),
            40: const Color(0xff9CA3B0),
            30: const Color(0xffD1D5DB),
            10: const Color(0xffF3F4F6),
          },
        );

  Color get shade100 => this[100]!;
  Color get shade90 => this[90]!;
  Color get shade70 => this[70]!;
  Color get shade50 => this[50]!;
  Color get shade40 => this[40]!;
  Color get shade30 => this[30]!;
  Color get shade10 => this[10]!;
}
