// necessary
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// components
import '../components/elements/hesap_button.dart';
import '../components/elements/hesap_text_field.dart';
import '../theme/colors.dart';
// theme
import 'package:hesap/theme/insets.dart';

class UyeOlEkran extends StatelessWidget {
  const UyeOlEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        title: const Text("Üye Ol"),
        titleTextStyle: const TextStyle(
          fontFamily: 'Ubuntu',
          fontSize: 20.0,
          color: AppColors.gray,
          height: 1.6,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          color: AppColors.gray,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Insets.m,
            ),
            child: IconButton(
              icon: const Icon(Icons.close_rounded),
              color: AppColors.gray,
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/qr.png"),
              alignment: Alignment.bottomLeft,
              fit: BoxFit.none,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(Insets.l),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const HesapTextField(
                  label: "Kullanıcı Adı",
                  prefixIcon: Icon(Icons.person_rounded),
                ),
                const HesapTextField(
                  label: "E-posta",
                  prefixIcon: Icon(Icons.email_rounded),
                  keyboardType: TextInputType.emailAddress,
                ),
                const HesapTextField(
                  label: "Telefon",
                  prefixIcon: Icon(Icons.phone_rounded),
                  keyboardType: TextInputType.phone,
                ),
                const HesapTextField(
                  label: "Şifre",
                  prefixIcon: Icon(Icons.password_rounded),
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  obscureText: true,
                ),
                const HesapTextField(
                  label: "Şifre (Tekrar)",
                  prefixIcon: Icon(Icons.password_rounded),
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  obscureText: true,
                ),
                Row(
                  children: [
                    HesapButton(
                      label: 'Kaydı Tamamla',
                      filled: true,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
