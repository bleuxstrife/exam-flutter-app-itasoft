import 'package:exam_app_itasoft/widgets/app_color.dart';
import 'package:exam_app_itasoft/widgets/app_style.dart';
import 'package:flutter/material.dart';

class BaseDecoration {
  static InputDecoration inputTextField = InputDecoration(
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.greyc4, width: 1),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.greyc4, width: 1),
    ),
    disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.greyc4, width: 1)),
    filled: true,
    hintStyle: AppStyle.labelHintStyle,
    isDense: true,
  );

  static ButtonStyle smallButtonStyle = const ButtonStyle(
    padding: WidgetStatePropertyAll(
      EdgeInsets.symmetric(horizontal: 24, vertical: 8),
    ),
    backgroundColor: WidgetStatePropertyAll(AppColor.systemPurpleColor),
    minimumSize: WidgetStatePropertyAll(
      Size(kMinInteractiveDimension, kMinInteractiveDimension),
    ),
  );

  static ButtonStyle roundedButtonStyle = ButtonStyle(
      padding: const WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      ),
      backgroundColor: const WidgetStatePropertyAll(AppColor.systemPurpleColor),
      minimumSize: const WidgetStatePropertyAll(
        Size(kMinInteractiveDimension, kMinInteractiveDimension),
      ),
      shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))));

  static ButtonStyle smallTextButtonStyle = ButtonStyle(
      shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0))));
}
