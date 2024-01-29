import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_app/core/color.dart';
import 'package:test_app/core/const.dart';
import 'package:test_app/widget/input_field.dart';
import 'package:test_app/widget/major_button.dart';
import 'package:test_app/widget/texts.dart';

class OpenWalletScreen extends StatelessWidget {
  const OpenWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
      ),
      body: Padding(
        padding: appPadding,
        child: Column(
          children: [
            Gap(MediaQuery.of(context).size.height * 0.05),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
              decoration: BoxDecoration(
                  color: AppColor.kLightRedColor,
                  borderRadius: BorderRadius.circular(7)),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextOf(
                        '₦ 20,800',
                        32,
                        AppColor.kPrimaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                      TextOf(
                        'Current Balance',
                        12,
                        AppColor.kRedColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
