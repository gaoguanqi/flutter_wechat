import 'package:flutter/material.dart';
class AppColors{
  static const PrimaryColor = 0xffebebeb;
  static const BackgroundColor = 0xffededed;
  static const TitleColor = 0xff181818;

  static const TabIconNormal = 0xff999999;
  static const TabIconActive = 0xff46c11b;

  static const ActionIconColor = 0xff000000;
  static const ActionMenuBgColor = 0xff4c4c4c;
  static const CardBgColor = 0xffffffff;
  static const AppBarPopupMenuColor = 0xffffffff;

}

class AppStyles{
  static const TitleStyle = TextStyle(
    fontSize: AppDimens.TitleTextSize,
    color: const Color(AppColors.TitleColor),
    fontWeight:FontWeight.w600,
  );

  static const MenuStyle = TextStyle(
    fontSize: AppDimens.MenuTextSize,
    color: Colors.black,
  );
}

class AppStrings{

}

class AppDimens{
  /// The height of the toolbar component of the [AppBar].
  static const double kToolbarHeight = 56.0;

  static const ActionIconSize = 18.0;
  static const TitleTextSize = 18.0;
  static const MenuTextSize = 16.0;
  static const SearchTextSize = 12.0;
}

class Constants{
  static const IconFontFamily = "appIconFont";
}