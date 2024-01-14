import 'package:flutter/material.dart';

import 'app_colors.dart';

/// define custom themes here

final mainTheme = ThemeData(
  fontFamily: 'Fjalla',
  scaffoldBackgroundColor: Colors.white,
  highlightColor: Colors.transparent,
  appBarTheme: const AppBarTheme(
    elevation: 0, // This removes the shadow from all App Bars.
  ),
  bottomNavigationBarTheme:
      const BottomNavigationBarThemeData(backgroundColor: Colors.white),
  badgeTheme: const BadgeThemeData(backgroundColor: Colors.white),
  splashColor: Colors.transparent,
)..addAppColor(
    AppThemeType.light,
    AppColors.firstAppColor,
  );
final lightTheme = ThemeData(
  fontFamily: 'Fjalla',
  scaffoldBackgroundColor: Colors.white,
  highlightColor: Colors.transparent,
  appBarTheme: const AppBarTheme(
    elevation: 0, // This removes the shadow from all App Bars.
  ),
  bottomNavigationBarTheme:
      const BottomNavigationBarThemeData(backgroundColor: Colors.white),
  badgeTheme: const BadgeThemeData(backgroundColor: Colors.white),
  splashColor: Colors.transparent,
)..addAppColor(
    AppThemeType.second,
    AppColors.secondAppColor,
  );

final darkTheme = ThemeData(
  fontFamily: 'Fjalla',
  brightness: Brightness.dark,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: const Color(0xFF100F14),
  bottomNavigationBarTheme:
      const BottomNavigationBarThemeData(backgroundColor: Color(0xFF100F14)),
  badgeTheme: const BadgeThemeData(backgroundColor: Color(0xFF100F14)),
)..addAppColor(
    AppThemeType.dark,
    AppColors.darkThemeColor,
  );

enum AppThemeType { light,second, dark }

extension ThemeDataExtensions on ThemeData {
  static final Map<AppThemeType, AppColors> _appColorMap = {};

  void addAppColor(AppThemeType type, AppColors appColor) {
    _appColorMap[type] = appColor;
  }

  AppColors get appColor {
    return _appColorMap[AppThemeSetting.currentAppThemeType] ??
        AppColors.firstAppColor;
  }
}

class AppThemeSetting {
  const AppThemeSetting._();

  static AppThemeType currentAppThemeType = AppThemeType.light;
}
