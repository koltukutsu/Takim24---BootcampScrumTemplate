// necessary
import 'package:flutter/material.dart';

// pages
import 'package:hesap/pages/qr_okuma_ekran.dart';

class HesapFloatingActionButton extends StatefulWidget {
  const HesapFloatingActionButton(
      {Key? key, required this.index, required this.onChangedButton})
      : super(key: key);
  final int index;
  final ValueChanged<int> onChangedButton;

  // void _floatingActionButtonFuction() {}
  // required this.floatingActionButtonFuction, this.icon = Icons.qr_code_scanner
  @override
  State<HesapFloatingActionButton> createState() =>
      _HesapFloatingActionButton();
}

class _HesapFloatingActionButton extends State<HesapFloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    return buildFloatingActionButton(index: widget.index);
  }

  Widget buildFloatingActionButton({required int index}) {
    if (index == 0) {
      return FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const QrOkumaEkran()));

        },
        child: const Icon(Icons.qr_code_scanner),
      );
    } else {
      return FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).pop();
          () => widget.onChangedButton(index);
          // print(index);
        },
        child: const Icon(Icons.exit_to_app),
      );
    }
  }
}
