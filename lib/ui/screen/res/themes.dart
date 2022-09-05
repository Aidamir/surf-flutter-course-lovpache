import 'package:flutter/material.dart';
import 'package:places/ui/res/constants.dart';

class AppTheme {
  final bool isDark;

  Color get backgroundPlaceItemBottom =>
      isDark ? AppColorsDark.backgroundPlaceItemBottom : AppColors.backgroundPlaceItemBottom;

  Color get textColorRegular => isDark ? AppColors.white : AppColors.textColorRegular;

  ThemeData get data => isDark ? darkTheme : lightTheme;

  const AppTheme({this.isDark=false});

  factory AppTheme.dark() {
    return const AppTheme(isDark: true);
  }

  factory AppTheme.light() {
    return const AppTheme();
  }

  factory AppTheme.of(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return AppTheme.dark();
    }

    return AppTheme.light();
  }
}

final lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: const TextTheme(
      headline1: AppTypography.appBarTextStyle,
      headline2: AppTypography.smallTitle16w500,
      headline3: AppTypography.largeTitle24w700,
      bodyText1: AppTypography.lightTextStyle,),
  backgroundColor: AppColors.backgroundColor,
  scaffoldBackgroundColor: AppColors.backgroundColor,
  tabBarTheme: TabBarTheme(
      labelStyle: AppTypography.lightTextStyle.copyWith(
        fontWeight: FontWeight.w700,
      ),
      unselectedLabelStyle: AppTypography.lightTextStyle.copyWith(fontWeight: FontWeight.w700,),
      unselectedLabelColor: AppColors.textColorLight,
      indicator: const BoxDecoration(
        color: AppColors.textColorRegular,
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
      ),),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: TextTheme(
      headline1: AppTypography.appBarTextStyle.copyWith(color: AppColors.white),
      headline2: AppTypography.smallTitle16w500.copyWith(color: AppColors.white),
      headline3: AppTypography.largeTitle24w700.copyWith(color: AppColors.white),
      bodyText1: AppTypography.lightTextStyle.apply(color: AppColors.white),),
  backgroundColor: AppColorsDark.backgroundColor,
  scaffoldBackgroundColor: AppColorsDark.backgroundColor,
  tabBarTheme: TabBarTheme(
      labelStyle: AppTypography.lightTextStyle.copyWith(
        fontWeight: FontWeight.w700,
      ),
      labelColor: AppColors.textColorRegular,
      unselectedLabelStyle: AppTypography.lightTextStyle.copyWith(fontWeight: FontWeight.w700, color: AppColors.white),
      unselectedLabelColor: AppColors.white.withOpacity(0.56),
      indicator: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
      ),),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    unselectedIconTheme: IconThemeData(color: Colors.white),
  ),
);
