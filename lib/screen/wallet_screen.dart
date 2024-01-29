import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:test_app/screen/create_wallet.dart';
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
            TextOf('Create Wallet', 20, const Color(0xFF2B2A29)),
            const Gap(15),
            TextOf(
              'You do not have a Wallet account yet.',
              14,
              const Color(0xFF828282),
            ),
            const Gap(15),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xff67156E)),
                    fixedSize: MaterialStatePropertyAll(Size(220, 40))),
                onPressed: () => Get.to(const CreateWalletScreen()),
                child: TextOf(
                  'Create Wallet',
                  16,
                  Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
