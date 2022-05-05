import 'package:flutter/material.dart';
import 'package:hesap/pages/giris_ekran.dart';
import 'package:hesap/theme/themes.dart';
import 'package:hesap/util/theme_manager.dart';

ThemeManager _themeManager = ThemeManager();

class HesapApp extends StatelessWidget {
  const HesapApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hesap',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: GirisEkran(),
    );
  }
}
