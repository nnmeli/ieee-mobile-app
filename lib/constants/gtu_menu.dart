import 'package:flutter/material.dart';
import './buttons_fast.dart';

import 'menu_button.dart';

class long_menu extends StatelessWidget {
  const long_menu({
    Key? key,
  }) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5 / 1,
      ),
      itemCount: secenek.length,
      itemBuilder: (context, index) {
        return Container(
          child: menu_button(colours[index], colours2[index], text_colours[index],
              secenek_resim[index], secenek[index],),
        );
      },
    );
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
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null,
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

