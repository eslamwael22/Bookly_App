import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({
    super.key,
    required this.text,
    required this.BackgroundColor,
    required this.textColor,
    this.fontSize,
    this.borderRadius,
    required this.fontweight,
  });
  final String text;
  final Color BackgroundColor;
  final Color textColor;
  final double? fontSize;
  final BorderRadius? borderRadius;
  final FontWeight fontweight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 160,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: BackgroundColor as Color?,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(8.0),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize, color: textColor),
        ),
      ),
    );
  }
}
