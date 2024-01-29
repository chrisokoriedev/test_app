import 'package:flutter/material.dart';
import 'package:test_app/core/color.dart';
import 'package:test_app/widget/texts.dart';

class MajorButton extends StatelessWidget {
  String buttonTitle;
  VoidCallback? press;
  double width;
  MajorButton(
    this.buttonTitle,
    this.width, {
    super.key,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            backgroundColor:
                const MaterialStatePropertyAll(AppColor.kPrimaryColor),
            fixedSize: MaterialStatePropertyAll(Size(width, 50))),
        onPressed: press,
        child: TextOf(
          buttonTitle,
          16,
          AppColor.kWhiteColor,
          fontWeight: FontWeight.w700,
        ));
  }
}
