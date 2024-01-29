import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:test_app/core/color.dart';
import 'package:test_app/core/const.dart';
import 'package:test_app/core/img_dir.dart';
import 'package:test_app/screen/add_card.dart';
import 'package:test_app/screen/wallet_screen.dart';
import 'package:test_app/widget/dotted_line.dart';
import 'package:test_app/widget/major_button.dart';
import 'package:test_app/widget/texts.dart';

class FundWalletScreen extends StatefulWidget {
  const FundWalletScreen({super.key});

  @override
  State<FundWalletScreen> createState() => _FundWalletScreenState();
}

class _FundWalletScreenState extends State<FundWalletScreen> {
  late CardModel _selectedOption;
  @override
  void initState() {
    super.initState();
    _selectedOption = cardOptions[0];
  }

  @override
  Widget build(BuildContext context) {
    final sizeMedia = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fund Wallet'),
      ),
      body: Padding(
        padding: appPadding,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Gap(sizeMedia.height * 0.032),
          TextOf('Select card to fund your wallet', 16, AppColor.kdarkBlack),
          ListView.builder(
            itemCount: cardOptions.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final option = cardOptions[index];
              return ListTile(
                leading: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Radio(
                      value: option,
                      groupValue: _selectedOption,
                      onChanged: (value) {
                        setState(() {
                          _selectedOption = value as CardModel;
                        });
                      },
                    ),
                    Image.asset(
                      option.imagePath,
                      width: 40,
                      height: 40,
                    ),
                  ],
                ),
                title: Text(option.title),
                subtitle: Text(option.description),
                trailing: GestureDetector(
                  onTap: () {
                    setState(() {
                      cardOptions.removeAt(index);
                    });
                  },
                  child: const Icon(
                    Icons.delete,
                    color: AppColor.kRedColor,
                  ),
                ),
              );
            },
          ),
          Gap(sizeMedia.height * 0.030),
          const DottedLine(
            color: AppColor.kLightgrey,
          ),
          Gap(sizeMedia.height * 0.032),
          InkResponse(
            onTap: () => Get.to(const AddCardScreen()),
            child: Row(
              children: [
                const Icon(Icons.add, size: 18, color: AppColor.kPrimaryColor),
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

class CardModel {
  final String title;
  final String description;
  final String imagePath;

  CardModel({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

List<CardModel> cardOptions = [
  CardModel(
    title: '**** **** **** 4256',
    description: 'Expires 02/24 ',
    imagePath: ImageOf.visaCard,
  ),
  CardModel(
    title: '**** **** **** 4256',
    description: 'Expires 02/24 ',
    imagePath: ImageOf.masterCard,
  ),
];
