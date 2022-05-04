// necessary
import 'package:flutter/material.dart';

// components
import 'package:hesap/components/hesap_normal_text.dart';

// theme
import 'package:hesap/theme/insets.dart';
import 'package:hesap/theme/colors.dart';

class HesapTextCard extends StatelessWidget {
  const HesapTextCard({Key? key,
    required this.text,
    this.textColor = AppColors.primary,

    this.fontSize = Insets.l,
    this.textAlignment = Alignment.center,
    this.fontWeight = FontWeight.w700,
    this.paddingLeft = 0.0,
    this.paddingTop = 0.0,
    this.paddingRight = 0.0,
    this.paddingBottom = 0.0,

    this.cardColor = AppColors.primary,
    this.cardHeight = 100,
    this.cardWidth = 250,
    this.marginLeft = 15,
    this.marginRight = 15,
    this.marginTop = 15,
    this.marginBottom = 15,

  })
      : super(key: key);

  final String text;

  final Color textColor;
  final Alignment textAlignment;
  final double fontSize;
  final FontWeight fontWeight;
  final double paddingLeft;
  final double paddingTop;
  final double paddingRight;
  final double paddingBottom;

  final Color cardColor;
  final double cardHeight;
  final double cardWidth;
  final double marginLeft;
  final double marginRight;
  final double marginTop;
  final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HesapNormalText(
          text: text,
          textColor: textColor,
          textAlignment: textAlignment,
          fontSize: fontSize,
          fontWeight: fontWeight,
        paddingLeft: paddingLeft,
        paddingTop: paddingTop,
        paddingRight: paddingRight,
        paddingBottom: paddingBottom,
      ),
      margin: EdgeInsets.only(
          left: marginLeft,
          top: marginTop,
          right: marginRight,
          bottom: marginBottom),
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
