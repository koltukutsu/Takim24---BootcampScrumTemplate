// necessary
import 'package:flutter/material.dart';

// theme
import 'package:hesap/theme/colors.dart';
import 'package:hesap/theme/insets.dart';

class HesapButton extends StatelessWidget {
  const HesapButton({
    Key? key,
    required this.label,
    this.filled = false,
    required this.onPressed,
  }) : super(key: key);

  final String label;
  final bool filled;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Padding(
        padding: const EdgeInsets.all(Insets.s),
        child: SizedBox(
          height: 48.0,
          child: OutlinedButton(
            onPressed: () {
              onPressed();
            },
            child: Text(
              label,
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
                color: filled ? Colors.white : AppColors.primary,
              ),
            ),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: AppColors.primary,
                width: 2.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Insets.m),
              ),
              backgroundColor: filled ? AppColors.primary : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
