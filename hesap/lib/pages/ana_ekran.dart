import 'package:flutter/material.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        child: const Icon(Icons.qr_code_scanner),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 4.0,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed:() {},
              icon: const Icon(Icons.home),
              // TODO: IconButton yerine bir widget oluştulup isSelected parametresi verilebilir.
            ),
            IconButton(
              onPressed:() {},
              icon: const Icon(Icons.fastfood),
              // TODO: Uyarı mesajı
            ),
            const SizedBox(
              height: 60,
            ),
            IconButton(
              onPressed:() {},
              icon: const Icon(Icons.room_service),
              // TODO: Uyarı mesajı
            ),
            IconButton(
              onPressed:() {},
              icon: const Icon(Icons.person),
              // TODO: IconButton yerine bir widget oluştulup isSelected parametresi verilebilir.
            ),
          ],
        ),

      ),
    );
  }
}
