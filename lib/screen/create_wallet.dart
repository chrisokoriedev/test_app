import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_app/core/const.dart';
import 'package:test_app/widget/input_field.dart';
import 'package:test_app/widget/major_button.dart';

class CreateWalletScreen extends StatelessWidget {
  const CreateWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Wallet'),
      ),
      body: Padding(
        padding: appPadding,
        child: Column(
          children: [
            Gap(MediaQuery.of(context).size.height * 0.1),
            InputField('Name', 'Auto-filled'),
            const Gap(20),
            InputField('Wallet ID', 'Auto-generated'),
            const Spacer(),
            MajorButton('Create Wallet', double.maxFinite, press: () {}),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
