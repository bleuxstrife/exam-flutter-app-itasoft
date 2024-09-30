
import 'package:exam_app_itasoft/widgets/app_color.dart';
import 'package:flutter/material.dart';

class CircularLoading extends StatelessWidget {
  const CircularLoading({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(color ?? AppColor.systemPurpleColor),
    );
  }
}
