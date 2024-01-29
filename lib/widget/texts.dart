import 'package:flutter/material.dart';

class TextOf extends StatelessWidget {
  String title;
  double? size;
  Color? textColor;
  FontWeight fontWeight;
  TextOf(this.title, this.size, this.textColor,  {super.key,this.fontWeight=FontWeight.w400,});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: textColor,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
