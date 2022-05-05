// necessary
import 'package:flutter/material.dart';
// pages
import 'package:hesap/pages/siparis_ekran.dart';
// theme
import 'package:hesap/theme/colors.dart';


class HesapBottomNavigationBar extends StatelessWidget {
  const HesapBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 4.0,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home),
            // TODO: IconButton yerine bir widget oluştulup isSelected parametresi verilebilir.
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SiparisEkran())
              );
            },
            icon: const Icon(Icons.fastfood),
            // TODO: Uyarı mesajı
          ),
          const SizedBox(
            height: 60,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.room_service),
            // TODO: Uyarı mesajı
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
            // TODO: IconButton yerine bir widget oluştulup isSelected parametresi verilebilir.
          ),
        ],
      ),

    );
  }
}