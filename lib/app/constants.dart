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

  static const DividerColor = 0xffd5d5d5;
  static const DesTextColor = 0xff999999;

  static const HomeMuteIcon = 0xffd8d8d8;

  static const NotifyDotBg = 0xfff85351;
  static const NotifyDotText = 0xffffffff;

}

class AppStyles{
  static const AppBarStyle = TextStyle(
    fontSize: AppDimens.TitleTextSize,
    color: const Color(AppColors.TitleColor),
    fontWeight:FontWeight.w600,
  );

  static const TitleStyle = TextStyle(
    fontSize: AppDimens.TextSize,
    color: const Color(AppColors.TitleColor),
  );

  static const MenuStyle = TextStyle(
    fontSize: AppDimens.MenuTextSize,
    color: Colors.black,
  );

  static const DesStyle = TextStyle(
    fontSize: 12.0,
    color: Color(AppColors.DesTextColor),
  );

  static const NotifyDotStyle = TextStyle(
    fontSize: 12.0,
    color: Color(AppColors.NotifyDotText),
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
  static const TextSize = 16.0;
  static const SearchTextSize = 12.0;

  static const HomeMuteIconSize = 18.0;

  static const AvatarSize = 50.0;
  static const AvatarRadius = 4.0;

  static const IndexBarWidth = 24.0;
}

class Constants{
  static const IconFontFamily = "appIconFont";


}