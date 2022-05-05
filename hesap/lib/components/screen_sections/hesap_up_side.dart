// necessary
import 'package:flutter/material.dart';
// components
import 'package:hesap/components/elements/hesap_text_card.dart';
import 'package:hesap/components/elements/hesap_normal_text.dart';
// theme
import 'package:hesap/theme/colors.dart';
import 'package:hesap/theme/insets.dart';


class HesapUpSide extends StatelessWidget {
  const HesapUpSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstText = "Cafe Flutter";
    var secondText = "Menu";
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 100,
        ),
        HesapNormalText(
            text: firstText,
            fontSize: Insets.xll,
            textColor: AppColors.primary),
        const SizedBox(
          height: 20,
        ),
        HesapTextCard(
          text: secondText,
          fontSize: Insets.xll,
          textColor: AppColors.lightBackground,
          cardColor: AppColors.primary,
        )
      ],
    );
  }
}
