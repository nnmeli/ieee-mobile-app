import 'package:flutter/material.dart';

import '../constants/menu_button.dart';
import 'package:ieee_mobile_app/screens/profile_page.dart';


class ieee_gtu_menu extends StatefulWidget {
  const ieee_gtu_menu({
    Key? key,
  }) : super(key: key);

  @override
  State<ieee_gtu_menu> createState() => _ieee_gtu_menuState();
}

class _ieee_gtu_menuState extends State<ieee_gtu_menu> {
  @override
  var defaultIndex = 0;

  var pages = [null, profile_page(), profile_page(), profile_page()];

  Widget build(BuildContext context) {
    if (defaultIndex == 0) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5 / 1,
        ),
        itemCount: sekmeler.length,
        itemBuilder: (context, index) {
          return Container(
            child: InkWell(
                onTap: () {
                  setState(() {
                    defaultIndex = rota[index];
                  });
                },
                child: menu_button(
                    colours[index],
                    colours2[index],
                    text_colours[index],
                    sekme_resim[index],
                    sekmeler[index],
                    rota[index])),
          );
        },
      );
    } else {
      return WillPopScope(
        onWillPop: () async {
          setState(() {
            defaultIndex = 0;
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
var sekmeler = [
  "BTG",
  "Etkinlik Takvimi",
  "Etkinlik Kayıt",
  "Sosyal Medya",
  "Haberler",
  "Komitelerimiz",
  "Yönetim Kurulu",
  "İdari Kurul"
];
var sekme_resim = [
  "lib/assets/images/btg.jpg",
  "lib/assets/images/takvim3b.png",
  "lib/assets/images/kayit4b.png",
  "lib/assets/images/sosyalmedya1b.png",
  "lib/assets/images/haber6.png",
  "lib/assets/images/komiteler-icon_beyaz.png",
  "lib/assets/images/yk_icon.png",
  "lib/assets/images/ik_icon_siyah.png"
];

var rota = [
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
];

var colours = [
  Colors.purple,
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
  Colors.black54,
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
  Colors.white,
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

// sarı
// Color(0xfff12711),
// Color(0xfff5af19),
//
// kırmızı
// Color(0xffF00000),
// Color(0xffbe1238),
