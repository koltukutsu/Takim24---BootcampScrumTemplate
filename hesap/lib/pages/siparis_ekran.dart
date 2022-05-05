// necessary
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// components
import 'package:hesap/components/screen_sections/hesap_bottom_navigation_bar.dart';
import 'package:hesap/components/elements/hesap_floating_action_button.dart';
import 'package:hesap/components/screen_sections/hesap_middle_side.dart';
import 'package:hesap/components/screen_sections/hesap_up_side.dart';

// theme
import 'package:hesap/theme/colors.dart';
import 'package:hesap/theme/insets.dart';

class SiparisEkran extends StatefulWidget {
  const SiparisEkran({Key? key}) : super(key: key);

  @override
  State<SiparisEkran> createState() => _SiparisEkran();
}

class _SiparisEkran extends State<SiparisEkran> {
  var cafeName = "Hesap Cafe";

  void _startingFunction() {}

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) => _startingFunction());
  }

  // @override
  // void dispose() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HesapUpSide(),
              HesapMiddleSide(),
            ],
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: HesapFloatingActionButton(icon: Icons.exit_to_app, floatingActionButtonFuction: (){
        Navigator.pop(context);
      }),
      bottomNavigationBar: const HesapBottomNavigationBar(),
    );
  }
}
