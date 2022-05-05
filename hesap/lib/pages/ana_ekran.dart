// necessary
import 'package:flutter/material.dart';

// components
import 'package:hesap/components/elements/hesap_floating_action_button.dart';
import 'package:hesap/components/screen_sections/hesap_bottom_navigation_bar.dart';
import 'package:hesap/pages/qr_okuma_ekran.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: HesapFloatingActionButton(
          icon: Icons.qr_code_scanner,
          floatingActionButtonFuction: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const QrOkumaEkran()));
          }),
      bottomNavigationBar: const HesapBottomNavigationBar(),
    );
  }
}
