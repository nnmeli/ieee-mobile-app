import 'package:flutter/material.dart';
import 'package:ieee_mobile_app/constants/menu_button.dart';
import 'package:ieee_mobile_app/gtu_screens/akademik_kadro.dart';
import 'package:ieee_mobile_app/gtu_screens/akademik_takvim.dart';
import 'package:ieee_mobile_app/gtu_screens/bus_menu.dart';
import 'package:ieee_mobile_app/gtu_screens/duyurular.dart';
import 'package:ieee_mobile_app/gtu_screens/haberler.dart';
import 'package:ieee_mobile_app/gtu_screens/harita.dart';
import 'package:ieee_mobile_app/gtu_screens/marmaray_page.dart';
import 'package:ieee_mobile_app/gtu_screens/yemekhane.dart';
import "package:provider/provider.dart";
import 'package:ieee_mobile_app/constants/stateData.dart';


class gtu_menu extends StatefulWidget {
  const gtu_menu({
    Key? key,
  }) : super(key: key);

  @override
  State<gtu_menu> createState() => _gtu_menuState();
}

class _gtu_menuState extends State<gtu_menu> {
  @override

  var pages = [null, duyurular(), yemekhane(), bus_menu(),marmaray_page(),akademik_takvim(),akademik_kadro(),haberler(),harita()];
  Widget build(BuildContext context) {
    var defaultIndex = Provider.of<StateData>(context, listen: false).gtuIndex;
    if (defaultIndex == 0) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5 / 1,
        ),
        itemCount: secenek.length,
        itemBuilder: (context, index) {
          return Container(
            child: InkWell(
                onTap: () {
                  setState(() {
                    Provider.of<StateData>(context, listen: false).newIndexGtu(rota[index]);
                    // defaultIndex = rota[index];
                  });
                },
                child: menu_button(
                    colours[index],
                    colours2[index],
                    text_colours[index],
                    secenek_resim[index],
                    secenek[index],
                    rota[index])),
          );
        },
      );
    } else {
      return WillPopScope(
        onWillPop: () async {
          setState(() {
            Provider.of<StateData>(context, listen: false).newIndexGtu(0);
          });
          return false;
        },
        child: Scaffold(
          body: pages[defaultIndex],
        ),);
    }
  }
}

//
var secenek = [
  "Duyurular",
  "Yemekhane",
  "Otobüs",
  "Marmaray",
  "Akademik Takvim",
  "Akademik Kadro",
  "Haberler",
  "Harita",
];
var secenek_resim = [
  "lib/assets/images/duyuru1.png",
  "lib/assets/images/yemekhane4b.png",
  "lib/assets/images/bus2b.png",
  "lib/assets/images/marma2.png",
  "lib/assets/images/takvim3.png",
  "lib/assets/images/akadro5b.png",
  "lib/assets/images/haber6b.png",
  "lib/assets/images/harita6.png",
];

var rota = [
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
];

var colours = [
  yellow1,
  red1,
  red1,
  yellow1,
  yellow1,
  red1,
  red1,
  yellow1,
  yellow1,
  red1,
  red1,
  yellow1,
  yellow1,
  red1,
  red1,
  yellow1
];
var colours2 = [
  yellow2,
  red2,
  red2,
  yellow2,
  yellow2,
  red2,
  red2,
  yellow2,
  yellow2,
  red2,
  red2,
  yellow2,
  yellow2,
  red2,
  red2,
  yellow2
];
var text_colours = [
  Colors.black,
  Colors.white,
  Colors.white,
  Colors.black,
  Colors.black,
  Colors.white,
  Colors.white,
  Colors.black
];

Color yellow1 = Color(0xfff12711);
Color yellow2 = Color(0xfff5af19);

Color red1 = Color(0xffF00000);
Color red2 = Color(0xffbe1238);