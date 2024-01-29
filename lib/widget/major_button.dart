import 'package:flutter/material.dart';
import 'package:test_app/core/color.dart';
import 'package:test_app/widget/texts.dart';

class MajorButton extends StatelessWidget {
  String buttonTitle;
  VoidCallback? press;
  bool isShowIcon;
  double width;
  IconData? iconData;
  MajorButton(
    this.buttonTitle,
    this.width, {
    super.key,
    this.press,
    this.iconData,
    this.isShowIcon = false,
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
        child: Row(
          mainAxisAlignment: isShowIcon
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.center,
          children: [
            isShowIcon
                ? Icon(
                    iconData,
                    color: AppColor.kWhiteColor,
                  )
                : const SizedBox.shrink(),
            TextOf(
              buttonTitle,
              16,
              AppColor.kWhiteColor,
              fontWeight: FontWeight.w700,
            ),
          ],
        ));
  }
}
