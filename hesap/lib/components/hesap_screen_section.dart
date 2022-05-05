// necessary
import 'package:flutter/material.dart';

// components
import 'package:hesap/components/elements/hesap_text_card.dart';

// theme
import 'package:hesap/theme/colors.dart';
import 'package:hesap/theme/insets.dart';

class HesapScreenSection extends StatelessWidget {
  // TODO: Daha kullanilmadi, gerekmezse silinebilir.
  const HesapScreenSection(
      {Key? key,
      required this.text,
      this.textColor = AppColors.darkBackground,
      this.fontSize = Insets.m,
      this.fontWeight = FontWeight.w400,
      this.cardColor = AppColors.gray,
      this.cardHeight = 40,
      this.cardWidth = 360,
      this.marginLeft = 15,
      this.marginRight = 15,
      this.marginTop = 15,
      this.marginBottom = 15})
      : super(key: key);

  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final Color cardColor;
  final double cardHeight;
  final double cardWidth;
  final double marginLeft;
  final double marginRight;
  final double marginTop;
  final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return HesapTextCard(
      text: text,
      textColor: textColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      cardColor: cardColor,
      cardHeight: cardHeight,
      cardWidth: cardWidth,
      marginLeft: marginLeft,
      marginRight: marginRight,
      marginBottom: marginBottom,
      marginTop: marginTop,
    );
  }
}
