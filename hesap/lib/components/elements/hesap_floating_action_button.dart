// necessary
import 'package:flutter/material.dart';

class HesapFloatingActionButton extends StatelessWidget {
  const HesapFloatingActionButton({Key? key, required this.floatingActionButtonFuction, this.icon = Icons.qr_code_scanner})
      : super(key: key);
  final IconData icon;
  final Function floatingActionButtonFuction;
  // void _floatingActionButtonFuction() {}

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        floatingActionButtonFuction();
      },
      child: Icon(icon),
    );
  }
}
