// necessary
import 'package:flutter/material.dart';

// theme
import 'package:hesap/theme/colors.dart';
import 'package:hesap/theme/insets.dart';

class HesapNormalText extends StatelessWidget {
  /*
    Renk -> primary
    fontSize -> L
    fontWeight -> w700
   */
  const HesapNormalText({
    Key? key,
    required this.text,
    this.textColor = AppColors.primary,
    this.textAlignment = Alignment.center,
    this.fontSize = Insets.l,
    this.fontWeight = FontWeight.w700,
    this.paddingLeft = 0.0,
    this.paddingTop = 0.0,
    this.paddingRight = 0.0,
    this.paddingBottom = 0.0,

  }) : super(key: key);

  final String text;
  final Color textColor;
  final Alignment textAlignment;
  final double fontSize;
  final FontWeight fontWeight;
  final double paddingLeft;
  final double paddingTop;
  final double paddingRight;
  final double paddingBottom;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: textAlignment,
      child: Padding(
        padding: EdgeInsets.only(
            left: paddingLeft,
            top: paddingTop,
            right: paddingRight,
            bottom: paddingBottom),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Ubuntu',
            fontWeight: fontWeight,
            color: textColor,
            fontSize: fontSize,
            letterSpacing: -2,
          ),
        ),
      ),
    );
  }
}
