import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:test_app/core/color.dart';
import 'package:test_app/screen/create_wallet.dart';
import 'package:test_app/widget/major_button.dart';
import 'package:test_app/widget/texts.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Wallet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextOf('Create Wallet', 20, AppColor.kdarkBlack),
            const Gap(15),
            TextOf(
              'You do not have a Wallet account yet.',
              14,
              AppColor.kLightgrey,
              fontWeight: FontWeight.w600,
            ),
            const Gap(15),
            MajorButton('Create Wallet', 220,
                press: () => Get.to(const CreateWalletScreen())),
          ],
        ),
      ),
    );
  }
}
