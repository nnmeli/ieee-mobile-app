import 'package:flutter/material.dart';
import 'package:ieee_mobile_app/screens/profile_page.dart';

import '../constants/menu_button.dart';

class bus_menu extends StatefulWidget {
  const bus_menu({
    Key? key,
  }) : super(key: key);

  @override
  State<bus_menu> createState() => _bus_menuState();
}

class _bus_menuState extends State<bus_menu> {
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
        itemCount: otobusler.length,
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
                    otobus_resim[index],
                    otobusler[index],
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
var otobusler = ["490", "490E", "700", "430", "560", "552"];
var otobus_resim = [
  "lib/assets/images/490.png",
  "lib/assets/images/490E.png",
  "lib/assets/images/700.png",
  "lib/assets/images/430.png",
  "lib/assets/images/560.png",
  "lib/assets/images/552.png",
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
