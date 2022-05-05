// necessary
import 'package:flutter/material.dart';
// components
import 'package:hesap/components/elements/hesap_floating_action_button.dart';
import 'package:hesap/components/screen_sections/hesap_bottom_navigation_bar.dart';

class QrOkumaEkran extends StatefulWidget {
  const QrOkumaEkran({Key? key}) : super(key: key);

  @override
  State<QrOkumaEkran> createState() => _QrOkumaEkran();
}

class _QrOkumaEkran extends State<QrOkumaEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: HesapFloatingActionButton(icon: Icons.home_filled, floatingActionButtonFuction: () {
        Navigator.of(context).pop();
      }),
      bottomNavigationBar: const HesapBottomNavigationBar(),
    );
  }
}
