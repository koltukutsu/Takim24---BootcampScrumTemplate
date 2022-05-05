// necessary
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// components
import 'package:hesap/components/elements/hesap_floating_action_button.dart';
import 'package:hesap/components/screen_sections/hesap_bottom_navigation_bar.dart';
import 'package:hesap/pages/qr_okuma_ekran.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: SliverAppBar(),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
              return const Card(
                child: Text(
                  'Lorem Ipsum Kafe',
                  style: TextStyle(fontSize: 30),
                ),
              );
            },
            childCount: 20,
            )
          )
        ],
      ),
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

class SliverAppBar extends SliverPersistentHeaderDelegate {
  SliverAppBar();
  double usttaraf = 20;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: usttaraf,
        ),
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
                  height:200,
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
              height: 210,
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
              height: 240,
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.82,
                    height: 80,
                    color: Colors.white,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Container(
                            margin: const EdgeInsets.all(18),
                            alignment: Alignment.center,
                            child: const Text(
                              'Menüyü görüntülemek için QR kodu okutun',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.qr_code,
                            size: 60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  double get maxExtent => 240 + usttaraf;

  @override
  double get minExtent => 20;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}
