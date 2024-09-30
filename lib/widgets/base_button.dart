import 'package:exam_app_itasoft/widgets/app_color.dart';
import 'package:exam_app_itasoft/widgets/app_style.dart';
import 'package:flutter/material.dart';

import 'base_decoration.dart';

class BaseButton {
static standardButton(
      {String? text,
      Function? onPressed,
      ButtonStyle? buttonStyle,
      TextStyle? textStyle}) {
    return OutlinedButton(
        style: buttonStyle ?? BaseDecoration.roundedButtonStyle,
        onPressed: () {
          if (onPressed != null) {
            onPressed();
          }
        },
        child: Center(
          child: Text(
            text ?? "Proses",
            style: textStyle ?? AppStyle.buttonTextWhite,
          ),
        ));
  }

  static smallButton(
      {String? text,
      Function? onPressed,
      ButtonStyle? buttonStyle,
      TextStyle? textStyle}) {
    return TextButton(
        style: BaseDecoration.smallTextButtonStyle,
        onPressed: () {
          if (onPressed != null) {
            onPressed();
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: AppColor.systemPurpleColor,
          child: Text(
            text ?? "Proses",
            style: textStyle ?? AppStyle.buttonTextWhite,
          ),
        ));
  }
}
