// necessary
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// pages
import 'package:hesap/pages/uye_ol_ekran.dart';
// components
import 'package:hesap/components/elements/hesap_button.dart';
import 'package:hesap/components/elements/hesap_text_field.dart';
// theme
import 'package:hesap/theme/colors.dart';
import 'package:hesap/theme/insets.dart';
import 'package:hesap/pages/ana_ekran.dart';

class GirisEkran extends StatelessWidget {
  const GirisEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: make it a component
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: Insets.m,
            ),
            child: IconButton(
              icon: const Icon(Icons.close_rounded),
              color: AppColors.gray,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    "hesap",
                    style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                      fontSize: 40.0,
                      letterSpacing: -2,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const HesapTextField(
                      label: "Telefon No",
                      keyboardType: TextInputType.phone,
                      prefixIcon: Icon(Icons.phone_rounded),
                    ),
                    const HesapTextField(
                      label: "Şifre",
                      keyboardType: TextInputType.number,
                      prefixIcon: Icon(Icons.password_rounded),
                      maxLength: 6,
                      obscureText: true,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: Insets.s),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          HesapButton(
                            label: 'Üye Ol',
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const UyeOlEkran(),
                                ),
                              );
                            },
                          ),
                          HesapButton(
                            label: 'Giriş Yap',
                            filled: true,
                            onPressed: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                  builder: (context) => const AnaSayfa(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
