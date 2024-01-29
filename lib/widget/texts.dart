import 'package:flutter/material.dart';

class TextOf extends StatelessWidget {
  String title;
  double? size;
  Color? textColor;
  TextOf(this.title, this.size, this.textColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: textColor,
        fontSize: size,
        fontFamily: 'Work Sans',
        fontWeight: FontWeight.w600,
        height: 0,
      ),
    );
  }
}
