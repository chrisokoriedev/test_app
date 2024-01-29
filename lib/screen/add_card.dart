import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:test_app/core/color.dart';
import 'package:test_app/core/const.dart';
import 'package:test_app/widget/input_field.dart';
import 'package:test_app/widget/major_button.dart';
import 'package:test_app/widget/texts.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    final sizeMedia = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Card'),
      ),
      body: Padding(
        padding: appPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(sizeMedia.height * 0.032),
            TextOf('Add card to fund your wallet', 16, AppColor.kdarkBlack),
            Gap(sizeMedia.height * 0.032),
            InputField('Name on Card', 'Enter card name'),
            Gap(sizeMedia.height * 0.020),
            InputField('Card Number', 'Enter card number'),
            Gap(sizeMedia.height * 0.020),
            Row(
              children: [
                Expanded(child: InputField('Expiry Date', 'Enter expiry date')),
                Gap(sizeMedia.height * 0.014),
                Expanded(child: InputField('CVV', 'Enter CVV')),
              ],
            ),
            Gap(sizeMedia.height * 0.020),
            InputField('Card Pin', 'Enter card pin'),
            Gap(sizeMedia.height * 0.020),
            Row(children: [
              TextOf('Save Card', 14, AppColor.kdarkBlack),
              Gap(sizeMedia.height * 0.008),
              SizedBox(
                width: 36,
                height: 20,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: CupertinoSwitch(
                    value: _switchValue,
                    activeColor: AppColor.kRedColor,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  ),
                ),
              ),
            ]),
            const Spacer(),
            MajorButton('Add', double.maxFinite, press: () => Get.back()),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
