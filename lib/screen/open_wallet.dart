import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:test_app/core/color.dart';
import 'package:test_app/core/const.dart';
import 'package:test_app/core/img_dir.dart';
import 'package:test_app/widget/input_field.dart';
import 'package:test_app/widget/major_button.dart';
import 'package:test_app/widget/texts.dart';
import 'package:test_app/widget/transaction_history_card.dart';

class OpenWalletScreen extends StatelessWidget {
  const OpenWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeMedia = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  MajorButton(
                    'Fund Wallet',
                    150,
                    isShowIcon: true,
                    iconData: Icons.add,
                    press: () => Get.bottomSheet(const Bottomsheet(),
                        isScrollControlled: true,
                        backgroundColor: AppColor.kWhiteColor,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(10)))),
                  ),
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
            TransactionHistoryCard(
              transactionTypeTitle: 'Top-Up',
              transactionTypeSubTitle: 'Credit',
              transactionAmount: '₦10,000',
              transactionImg: ImageOf.topUp,
              status: "Successful",
            ),
            const Gap(15),
            TransactionHistoryCard(
              transactionTypeTitle: 'Pharmacy Purchase',
              transactionTypeSubTitle: 'Debit',
              transactionAmount: '₦10,800',
              transactionImg: ImageOf.cart,
              status: "Failed",
            )
          ],
        ),
      ),
    );
  }
}

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sizeMedia = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 27),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextOf(
                'View Request',
                16,
                AppColor.kdarkBlack,
                fontWeight: FontWeight.w600,
              ),
              const Icon(
                Icons.close,
                size: 18,
              )
            ],
          ),
          Gap(sizeMedia.height * 0.025),
          Image.asset(ImageOf.addMoney),
          Gap(sizeMedia.height * 0.025),
          Center(
            child: TextOf(
              'Add Money to your wallet',
              16,
              AppColor.kdarkBlack,
              fontWeight: FontWeight.w500,
            ),
          ),
          Gap(sizeMedia.height * 0.025),
          InputField('Amount', '0.00'),
          Gap(sizeMedia.height * 0.025),
          MajorButton('Continue', double.maxFinite,
              press: () => Get.to(const OpenWalletScreen())),
        ],
      ),
    );
  }
}
