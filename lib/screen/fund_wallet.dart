import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:test_app/core/color.dart';
import 'package:test_app/core/const.dart';
import 'package:test_app/screen/add_card.dart';
import 'package:test_app/screen/wallet_screen.dart';
import 'package:test_app/widget/major_button.dart';
import 'package:test_app/widget/texts.dart';

class FundWalletScreen extends StatelessWidget {
  const FundWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeMedia = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Fund Wallet'),
      ),
      body: Padding(
        padding: appPadding,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Gap(sizeMedia.height * 0.03),
          InkResponse(
            onTap: () => Get.to(const AddCardScreen()),
            child: Row(
              children: [
                Icon(Icons.add, size: 18, color: AppColor.kPrimaryColor),
                TextOf(
                  'Add Card',
                  16,
                  AppColor.kPrimaryColor,
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
          ),
          const Spacer(),
          MajorButton('Fund', double.maxFinite,
              press: () => Get.offAll(const WalletScreen())),
          const Gap(20),
        ]),
      ),
    );
  }
}
