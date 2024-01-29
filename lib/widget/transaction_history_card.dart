import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_app/core/color.dart';
import 'package:test_app/widget/texts.dart';

class TransactionHistoryCard extends StatelessWidget {
  String? transactionTypeTitle;
  String? transactionTypeSubTitle;
  String? transactionAmount;
  String? transactionImg;
  String? status;
  TransactionHistoryCard({
    super.key,
    this.transactionTypeTitle,
    this.transactionTypeSubTitle,
    this.status,
    this.transactionImg,
    this.transactionAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextOf('Transaction ID: 166523', 14, AppColor.kdarkBlack),
            TextOf('23/10/2022 | 9:00 AM', 12, AppColor.kLightgrey),
          ],
        ),
        const Gap(14),
        Row(
          children: [
            Image.asset(transactionImg!),
            const Gap(15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextOf(transactionTypeTitle!, 14, AppColor.kdarkBlack),
                TextOf(transactionTypeSubTitle!, 14, AppColor.kLightgrey),
              ],
            )
          ],
        ),
        const Gap(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextOf('Amount', 14, AppColor.kLightgrey),
                TextOf(
                  transactionAmount!,
                  16,
                  AppColor.kdarkBlack,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            Container(
              width: 107,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
              decoration: BoxDecoration(
                  color: status == 'Successful'
                      ? AppColor.kLightGreenColor
                      : AppColor.kLightRedColor,
                  borderRadius: BorderRadius.circular(10)),
              child: TextOf(
                status!,
                14,
                status == 'Successful'
                    ? AppColor.kGreenColor
                    : AppColor.kRedColor,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        )
      ]),
    );
  }
}
