// necessary
import 'package:flutter/material.dart';

// components
import 'package:hesap/components/elements/hesap_normal_text.dart';

// theme
import 'package:hesap/theme/insets.dart';
import 'package:hesap/theme/colors.dart';

class HesapTextCard extends StatelessWidget {
  // TODO: card radius.circular kisimlarini da kullanicidan alsin
  const HesapTextCard({
    Key? key,
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
    this.cardShadowColorOpacity = 0.5,
    this.cardHeight = 100,
    this.cardWidth = 250,
    this.cardCircularTopLeft = 10,
    this.cardCircularTopRight = 10,
    this.cardCircularBottomLeft = 10,
    this.cardCircularBottomRight = 10,
    this.marginLeft = 15,
    this.marginRight = 15,
    this.marginTop = 15,
    this.marginBottom = 15,
    this.cardShadowColor = Colors.grey,
    this.cardSpreadRadius = 5,
    this.cardBlurRadius = 7,
    this.cardOffset = const Offset(0, 3),
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

  final Color cardColor;
  final double cardHeight;
  final double cardWidth;
  final double cardCircularTopLeft;
  final double cardCircularTopRight;
  final double cardCircularBottomLeft;
  final double cardCircularBottomRight;

  final Color cardShadowColor;
  final double cardShadowColorOpacity;
  final double cardSpreadRadius;
  final double cardBlurRadius;
  final Offset cardOffset;

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
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(cardCircularTopLeft),
            topRight: Radius.circular(cardCircularTopRight),
            bottomLeft: Radius.circular(cardCircularBottomLeft),
            bottomRight: Radius.circular(cardCircularBottomRight)),
        boxShadow: [
          BoxShadow(
            color: cardShadowColor.withOpacity(cardShadowColorOpacity),
            spreadRadius: cardSpreadRadius,
            blurRadius: cardBlurRadius,
            offset: cardOffset, // changes position of shadow
          ),
        ],
      ),
    );
  }
}
