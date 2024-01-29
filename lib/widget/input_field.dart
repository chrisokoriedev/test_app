import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_app/core/color.dart';
import 'package:test_app/core/const.dart';
import 'package:test_app/widget/texts.dart';

class InputField extends StatelessWidget {
  String labelTitle;
  String hintText;
  InputField(
    this.labelTitle,
    this.hintText, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextOf(
          labelTitle,
          16,
          AppColor.kdarkBlack,
          fontWeight: FontWeight.w500,
        ),
        const Gap(10),
        TextFormField(
            decoration: InputDecoration(
                isCollapsed: true,
                hintText: hintText,
                hintStyle:
                    const TextStyle(fontSize: 14, color: AppColor.kLightgrey),
                border: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColor.kinputBorderColor, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(7))),
                contentPadding: inputPadding))
      ],
    );
  }
}
