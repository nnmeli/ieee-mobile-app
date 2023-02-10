import 'package:flutter/material.dart';
import 'package:ieee_mobile_app/screens/profile_page.dart';
import '../constants/menu_button.dart';

class komiteler_menu extends StatefulWidget {
  const komiteler_menu({
    Key? key,
  }) : super(key: key);

  @override
  State<komiteler_menu> createState() => _komiteler_menuState();
}

class _komiteler_menuState extends State<komiteler_menu> {
  @override

  var defaultIndex = 0;

  var pages = [null, profile_page(), profile_page(), profile_page(),profile_page(),profile_page(),profile_page(),profile_page(),profile_page()];

  Widget build(BuildContext context) {
    if (defaultIndex == 0) {
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5 / 1,
        ),
        itemCount: komiteler.length,
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
                    colours[index],
                    Colors.black,
                    komite_resim[index],
                    komiteler[index],
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
var komiteler = [
  "Computer Society",
  "ComSoc",
  "EAC",
  "EMBS",
  "External Relations",
  "Girişimcilik",
  "İnsan Kaynakları",
  "Kişisel Gelişim \n ve Kariyer",
  "Malzeme Bilimi",
  "Matematik",
  "Medya ve Tasarım",
  "PES",
  "RAS",
  "WİE"
];
var komite_resim = [
  "lib/assets/images/cs.png",
  "lib/assets/images/comsoc.png",
  "lib/assets/images/eac.png",
  "lib/assets/images/embs.png",
  "lib/assets/images/external.png",
  "lib/assets/images/girisimcilik.png",
  "lib/assets/images/insankaynaklari.png",
  "lib/assets/images/kisiselgelisim.png",
  "lib/assets/images/malzeme.png",
  "lib/assets/images/matematik.png",
  "lib/assets/images/medyavetasarim.png",
  "lib/assets/images/pes.png",
  "lib/assets/images/ras.png",
  "lib/assets/images/wie.png"
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
  2,
  2,
  2,
  2,
  2,
  2,
  2
];
var colours = [
  Color(0xfff59c1a),
  Colors.white,
  Color(0xff653366),
  Color(0xfffeda46),
  Color(0xff2a70b6),
  Color(0xff97d3dd),
  Color(0xfff095be),
  Color(0xfff095be),
  Colors.white,
  Color(0xff97d3dd),
  Colors.white,
  Color(0xff038837),
  Color(0xfffdd74e),
  Color(0xffe71d73)
];
var image_colours = [
  Colors.white,
  Colors.black,
  Color(0xfffeda46),
  Color(0xfff095be),
  Color(0xffe71d73),
  Colors.white,
  Color(0xff2a70b6),
  Color(0xfff59c1a),
  Color(0xff643468),
  Color(0xff038837),
  Color(0xfff095be),
  Color(0xff2873ad),
  Color(0xff653366),
  Color(0xfff59c1a)
];
