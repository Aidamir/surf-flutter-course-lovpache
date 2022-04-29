import 'package:flutter/material.dart';

/// Строковые константы приложения
class AppStrings {
  static const appTitle = 'Список\nинтересных мест';
}

class AppAssets {
}

class AppTypography {
  static const appBarTextStyle = TextStyle(
    color: AppColors.textColorRegular,
    fontFamily: 'Roboto',
    fontSize: 32,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  );
  static const largeTitle24w700 = TextStyle(
    color: AppColors.textColorRegular,
    fontFamily: 'Roboto',
    fontSize: 24,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    height: 29/24,
  );
  static const lightTextStyle = TextStyle(
    color: AppColors.textColorLight,
    fontFamily: 'Roboto',
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    height: 18/14,
  );
  static const smallTitle16w500 = TextStyle(
    color: AppColors.textColorRegular,
    fontFamily: 'Roboto',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    height: 20/16,
  );
  static const placeTitleTextStyleBold = TextStyle(
    color: AppColors.textColorRegular,
    fontFamily: 'Roboto',
    fontSize: 24,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    height: 29/24,
  );

}

class AppColors {
  static const backgroundColor = Colors.white;
  static const textColorRegular = Color(0xff3B3E5B);
  static const textColorLight = Color(0xff7C7E92);
  static const backgroundPlaceItemBottom = Color(0xfff5f5f5);
}
