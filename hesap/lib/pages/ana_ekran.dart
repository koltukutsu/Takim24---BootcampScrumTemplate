import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hesap/theme/colors.dart';

class AnaSayfa extends StatefulWidget {

  const AnaSayfa({Key? key}) : super(key: key);


  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Transform.scale(
                scale: 1.05,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(70),
                    bottomRight: Radius.circular(70),
                  ),
                    child: Container(
                    width: MediaQuery.of(context).size.width,
                    height:190,
                    color: AppColors.primary,
                    ),
                  ),
              ),
              SvgPicture.asset('assets/images/background.svg'),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    'hesap',
                   textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                        size: 25,
                      ),
                      Text(
                        ' Konum',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              SizedBox(
                height: 230,
                child: Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.82,
                    height: 80,
                    color: Colors.white,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Menüyü görüntülemek için QR kodu okutun'),
                        Icon(
                          Icons.qr_code,
                          size: 45,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ],
            ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        child: const Icon(Icons.qr_code_scanner),
      ),
      bottomNavigationBar: const BotNavBar(),
    );
  }
}



class BotNavBar extends StatefulWidget {
  const BotNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 4.0,
      clipBehavior: Clip.antiAlias,
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

    );
  }
}
