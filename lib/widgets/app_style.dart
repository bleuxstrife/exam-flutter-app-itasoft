import 'package:exam_app_itasoft/widgets/app_color.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static TextStyle labelStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColor.systemBlackColor,
  );

  static TextStyle subLabelStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColor.grey71,
  );

  static TextStyle itemLabelStyle = const TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.bold,
    color: AppColor.systemBlackColor,
  );

  static TextStyle itemLabelRedStyle =
      itemLabelStyle.copyWith(color: AppColor.systemRedColor);

  static TextStyle smallButtonTextWhite =
      buttonTextWhite.copyWith(fontSize: 14);

  static TextStyle logoutStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColor.systemRedColor,
      decoration: TextDecoration.underline,
      decorationColor: AppColor.systemRedColor);

  static TextStyle labelBoldStyle =
      labelStyle.copyWith(fontWeight: FontWeight.bold);

  static TextStyle labelHintStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColor.grey71,
  );

  static TextStyle buttonTextWhite = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
}
