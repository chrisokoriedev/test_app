import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:test_app/core/color.dart';
import 'package:test_app/core/const.dart';
import 'package:test_app/widget/major_button.dart';
import 'package:test_app/widget/texts.dart';

class OpenWalletScreen extends StatelessWidget {
  const OpenWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeMedia = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
      ),
      body: Padding(
        padding: appPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(sizeMedia.height * 0.03),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
              decoration: BoxDecoration(
                  color: AppColor.kLightRedColor,
                  borderRadius: BorderRadius.circular(7)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  ),
                  MajorButton('Fund Wallet', 150,
                      isShowIcon: true,
                      iconData: Icons.add,
                      press: () => Get.to(const OpenWalletScreen())),
                ],
              ),
            ),
            Gap(sizeMedia.height * 0.04),
            TextOf(
              'Transaction History',
              20,
              AppColor.kdarkBlack,
              fontWeight: FontWeight.w500,
            ),
            Gap(sizeMedia.height * 0.03),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: AppColor.kWhiteColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: AppColor.kLightgreyII,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
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
