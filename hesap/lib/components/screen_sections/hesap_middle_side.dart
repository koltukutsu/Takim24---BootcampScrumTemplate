// necessary
import 'package:flutter/material.dart';

// components
import 'package:hesap/components/elements/hesap_text_card.dart';
import 'package:hesap/components/elements/hesap_normal_text.dart';

// theme
import 'package:hesap/theme/colors.dart';
import 'package:hesap/theme/insets.dart';


class HesapMiddleSide extends StatelessWidget {
  // TODO: text ve cardin oldugu kisim ScreenSection icine alinabilir.
  const HesapMiddleSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstText = "Corbalar";
    var secondText = "Makarnalar";
    final List corbaCesitleri = ["Mercimek Corbasi", "Domates Corbasi"];
    final List makarnaCesitleri = ["Penne Arrabbiata", "Fettucine Alfredo"];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 10,
        ),
        HesapTextCard(
          text: firstText,
          fontSize: Insets.l,
          textColor: AppColors.darkBackground,
          textAlignment: Alignment.centerLeft,
          cardColor: Colors.grey.shade300,
          cardWidth: 500,
          cardHeight: 40,
          paddingLeft: 15,
          marginTop: 0,
          marginBottom: 3,
          marginLeft: 0,
          marginRight: 0,
          cardCircularBottomLeft: 0,
          cardCircularBottomRight: 0,
          cardCircularTopLeft: 0,
          cardCircularTopRight: 0,
          cardBlurRadius: 0,
          cardShadowColorOpacity: 0,
          cardSpreadRadius: 0,
        ),
        for (var item in corbaCesitleri)
          // TODO: Buraya bir tane daha card ekleyip dekotarif bir hale getirmak lazim
          HesapTextCard(
            text: item,
            fontSize: Insets.l,
            textColor: AppColors.darkBackground,
            fontWeight: FontWeight.w400,
            textAlignment: Alignment.topLeft,
            cardColor: AppColors.white,
            cardWidth: 500,
            cardHeight: 100,
            paddingLeft: 15,
            marginTop: 1,
            marginBottom: 0,
            marginLeft: 0,
            marginRight: 0,
            cardCircularBottomLeft: 0,
            cardCircularBottomRight: 0,
            cardCircularTopLeft: 0,
            cardCircularTopRight: 0,
            cardBlurRadius: 0,
            cardShadowColorOpacity: 0,
            cardSpreadRadius: 0,
          ),
        HesapTextCard(
          text: secondText,
          fontSize: Insets.l,
          textColor: AppColors.darkBackground,
          textAlignment: Alignment.centerLeft,
          cardColor: Colors.grey.shade300,
          cardWidth: 500,
          cardHeight: 40,
          paddingLeft: 15,
          marginTop: 20,
          marginBottom: 0,
          marginLeft: 0,
          marginRight: 0,
          cardCircularBottomLeft: 0,
          cardCircularBottomRight: 0,
          cardCircularTopLeft: 0,
          cardCircularTopRight: 0,
          cardBlurRadius: 0,
          cardShadowColorOpacity: 0,
          cardSpreadRadius: 0,
        ),
        for (var item in makarnaCesitleri)
          // TODO: Buraya bir tane daha card ekleyip dekotarif bir hale getirmak lazim
          HesapTextCard(
            text: item,
            fontSize: Insets.l,
            textColor: AppColors.darkBackground,
            fontWeight: FontWeight.w400,
            textAlignment: Alignment.centerLeft,
            cardColor: AppColors.white,
            cardWidth: 500,
            cardHeight: 100,
            paddingLeft: 15,
            marginTop: 1,
            marginBottom: 0,
            marginLeft: 0,
            marginRight: 0,
            cardCircularBottomLeft: 0,
            cardCircularBottomRight: 0,
            cardCircularTopLeft: 0,
            cardCircularTopRight: 0,
            // cardShadowColor: ,
            cardBlurRadius: 0,
            cardShadowColorOpacity: 0,
            cardSpreadRadius: 0,
          ),
      ],
    );
  }
}
