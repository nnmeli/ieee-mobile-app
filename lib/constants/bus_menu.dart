import 'package:flutter/material.dart';

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
      itemCount: otobusler.length,
      itemBuilder: (context, index) {
        return Container(
          child: menu_button(
            colours[index],
            colours2[index],
            text_colours[index],
            otobus_resim[index],
            otobusler[index],

          ),
        );
      },
    );
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
