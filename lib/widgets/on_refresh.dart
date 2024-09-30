import 'package:exam_app_itasoft/widgets/base_button.dart';
import 'package:flutter/material.dart';
import 'space.dart';

class OnRefresh extends StatelessWidget {
  final String message;
  final String buttonText;
  final Function onRefresh;
  final double? msgFontSize;

  const OnRefresh(
      {super.key,
      required this.message,
      required this.onRefresh,
      this.msgFontSize,
      this.buttonText = "Coba Lagi"});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          message,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontSize: msgFontSize ?? 17),
          textAlign: TextAlign.center,
        ),
        Space.vMedium,
        BaseButton.standardButton(text: "Coba Lagi", onPressed: () => onRefresh())
      ],
    );
  }
}
