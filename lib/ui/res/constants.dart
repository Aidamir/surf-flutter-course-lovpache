import 'package:flutter/material.dart';

/// Строковые константы приложения
class AppStrings {
  static const appTitle = 'Список\nиинтересных мест';
}

class AppAssets {
}

class AppTypography {
  static const appBarTextStyle = TextStyle(
    color: Color(0xff252849),
    fontFamily: 'Roboto',
    fontSize: 32,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
  );
  static const lightGreyTinyTextStyle = TextStyle(
    color: Color(0xff7C7E92),
    fontFamily: 'Roboto',
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    height: 18/14,
  );
  static const placeTitleTextStyle = TextStyle(
    color: Color(0xff3B3E5B),
    fontFamily: 'Roboto',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    height: 20/16,
  );

}

class AppColors {
  static const backgroundColor = Colors.white;
/*  static const backgroundColor = Color(0xfff5f5f5);
  static const backgroundPlaceItemBottom = Color(0xffe9ebee);*/
  static const backgroundPlaceItemBottom = Color(0xfff5f5f5);
  static const placeTypeColor = Colors.white;
}
