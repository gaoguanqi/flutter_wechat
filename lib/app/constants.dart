import 'package:flutter/material.dart';
class AppColors{
  static const PrimaryColor = 0xffebebeb;
  static const BackgroundColor = 0xffededed;
  static const TitleColor = 0xff181818;

  static const TabIconNormal = 0xff999999;
  static const TabIconActive = 0xff46c11b;

}

class AppStyles{
  static const TitleStyle = TextStyle(
    fontSize: AppDimens.TitleTextSize,
    color: const Color(AppColors.TitleColor),
    fontWeight:FontWeight.w600,
  );
}

class AppStrings{

}

class AppDimens{
  static const ActionIconSize = 18.0;
  static const TitleTextSize = 18.0;
}

class Constants{
  static const IconFontFamily = "appIconFont";
}