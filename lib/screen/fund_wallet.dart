import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_app/core/const.dart';


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
        ]),
      ),
    );
  }
}
