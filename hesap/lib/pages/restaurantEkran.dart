// necessary
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// components
import 'package:hesap/components/elements/hesap_floating_action_button.dart';
import 'package:hesap/components/elements/hesap_resimli_card.dart';
// import 'package:hesap/components/screen_sections/hesap_bottom_navigation_bar.dart';
import 'package:hesap/pages/qr_okuma_ekran.dart';
import 'package:hesap/theme/colors.dart';

class RestaurantEkran extends StatefulWidget {
  const RestaurantEkran({Key? key}) : super(key: key);

  @override
  State<RestaurantEkran> createState() => _RestaurantEkran();
}

class _RestaurantEkran extends State<RestaurantEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: SliverAppBar(
                maxYukseklik: 300.0,
              ),
              pinned: true,
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                  return HesapResimliCard();
                },
                  childCount: 20,
                )
            )
          ],
        ),
      ),
    );
  }
}

class SliverAppBar extends SliverPersistentHeaderDelegate {
  final double maxYukseklik;

  SliverAppBar({required this.maxYukseklik});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    var adjustedShrinkOffset =
    shrinkOffset > minExtent ? minExtent : shrinkOffset;
    double offset = (minExtent - adjustedShrinkOffset) -20;
    double topPadding = MediaQuery.of(context).padding.top + 250;

    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        SizedBox(
          height: maxYukseklik,
        ),
        Transform.scale(
          scale: 1.05,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(70),
              bottomRight: Radius.circular(70),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: topPadding-55,
              color: AppColors.primary,
            ),
          ),
        ),
        //SvgPicture.asset('assets/images/background.svg'),
        SizedBox(
          height: topPadding -20,
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
          height: 120 + offset,
          child: Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.82,
                height: 90,
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
        Positioned(
          top: 110 + offset ,
          child: Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: SizedBox(
              width: MediaQuery.of(context).size.width -20,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Text(
                      'Yakındaki Mekanlar',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.search,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => maxYukseklik  ;

  @override
  double get minExtent => 140;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}