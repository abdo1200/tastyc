import 'package:tastyc/resource/styles/app_themes.dart';
import 'package:flutter/material.dart';

class AppColors {
  const AppColors(
      {required this.editTextColor,
      required this.onBoardingText,
      required this.primaryColor,
      required this.secondaryColor,
      required this.primaryTextColor,
      required this.secondaryTextColor,
      required this.primaryGradient,
      required this.errorTextColor,
      required this.dialogBackColor,
      required this.witheColor,
      required this.dialogColor});

  static late AppColors current;

  final Color primaryColor;
  final Color secondaryColor;
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color errorTextColor;
  final Color dialogBackColor;
  final Color witheColor;
  final Color dialogColor;
  final Color editTextColor;
  final Color onBoardingText;

  /// gradient
  final LinearGradient primaryGradient;

  static const firstAppColor = AppColors(
    primaryColor: Color(0xFF9F3639),
    secondaryColor: Color(0xFFF5570B),
    primaryTextColor: Color(0xFF091B3D),
    secondaryTextColor: Color(0xFFF56D3B),
    editTextColor: Color(0xFF979797),
    primaryGradient: LinearGradient(
        colors: [Color(0xFF9F3639), Color(0xFFA6433A)], stops: [.5, .5]),
    errorTextColor: Color(0xFFFF0000),
    dialogBackColor: Color(0xFFEDEDED),
    witheColor: Color(0xFFFFFFFF),
    dialogColor: Color(0xFFFFFFFF),
    onBoardingText: Color(0xFFFFFFFF),
  );

  static const secondAppColor = AppColors(
    primaryColor: Color(0xFFFAEFDF),
    secondaryColor: Color(0xFFBD0229),
    primaryTextColor: Color(0xFF091B3D),
    secondaryTextColor: Color(0xFFF56D3B),
    editTextColor: Color(0xFF979797),
    primaryGradient: LinearGradient(
        colors: [Color(0xFFFFFCF7), Color(0xFFFAEFDF)], stops: [.5, .5]),
    errorTextColor: Color(0xFFFF0000),
    dialogBackColor: Color(0xFFFFFFFF),
    witheColor: Color(0xFFFFFFFF),
    onBoardingText: Color(0xFF292D32),
    dialogColor: Color(0xFFFFFFFF),
  );

  static const darkThemeColor = AppColors(
      primaryColor: Color(0xFF000000),
      secondaryColor: Color(0xFFBC794E),
      primaryTextColor: Color(0xFF000000),
      secondaryTextColor: Color(0xFFB6B6B6),
      editTextColor: Color.fromRGBO(236, 236, 236, 1),
      primaryGradient:
          LinearGradient(colors: [Color(0xFF1C1C1C), Color(0xFF000000)]),
      errorTextColor: Color(0xFFAF0303),
      dialogBackColor: Color(0xff10101040),
      witheColor: Color(0xFFFFFFFF),
      onBoardingText: Color(0xFFFFFFFF),
      dialogColor: Color.fromRGBO(26, 24, 23, 0.16));

  static AppColors of(BuildContext context) {
    final appColor = Theme.of(context).appColor;

    current = appColor;

    return current;
  }

  AppColors copyWith(
      {Color? primaryColor,
      Color? secondaryColor,
      Color? primaryTextColor,
      Color? secondaryTextColor,
      Color? editTextColor,
      LinearGradient? primaryGradient,
      Color? errorTextColor,
      Color? dialogBackColor,
      Color? witheColor,
      Color? dialogColor,
      Color? onBoardingText}) {
    return AppColors(
      primaryColor: primaryColor ?? this.primaryColor,
      editTextColor: editTextColor ?? this.editTextColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      primaryTextColor: primaryTextColor ?? this.primaryTextColor,
      secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
      primaryGradient: primaryGradient ?? this.primaryGradient,
      errorTextColor: errorTextColor ?? this.errorTextColor,
      dialogBackColor: dialogBackColor ?? this.dialogBackColor,
      witheColor: witheColor ?? this.witheColor,
      dialogColor: dialogColor ?? this.dialogColor,
      onBoardingText: onBoardingText ?? this.onBoardingText,
    );
  }
}
