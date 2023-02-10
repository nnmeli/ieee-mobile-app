import 'package:flutter/material.dart';
import 'package:ieee_mobile_app/constants/buttons_fast.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ieee_mobile_app/gtu_screens/bus_menu.dart';
import 'package:ieee_mobile_app/gtu_screens/marmaray_page.dart';
import 'package:ieee_mobile_app/gtu_screens/yemekhane.dart';
import 'package:ieee_mobile_app/ieee_gtu_screens/komiteler_menu.dart';
import 'package:ieee_mobile_app/screens/ieee_gtu_menu.dart';

class ana_sayfa extends StatefulWidget {
  const ana_sayfa({
    Key? key,
    required this.sol_bosluk,
    required this.height,
    required this.ieee_icon,
  }) : super(key: key);

  final double sol_bosluk;
  final double height;
  final String ieee_icon;

  @override
  State<ana_sayfa> createState() => _ana_sayfaState();
}

var defaultIndex = 0;

var pages = [null, marmaray_page(), bus_menu(), ieee_gtu_menu(), yemekhane()];

class _ana_sayfaState extends State<ana_sayfa> {
  @override
  Widget build(BuildContext context) {
    if (defaultIndex == 0) {
      return Column(children: [
        Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  flex: 40,
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: widget.sol_bosluk),
                      child: Text("IEEE GTÜ Mobil Uygulamasına",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: widget.height / 32,
                              color: Colors.black)),
                    ),
                  ),
                ),
                Expanded(
                  flex: 60,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: widget.sol_bosluk),
                        child: AnimatedTextKit(animatedTexts: [
                          TyperAnimatedText(
                              speed: Duration(milliseconds: 100),
                              'Hoş Geldin!',
                              textAlign: TextAlign.left,
                              textStyle: TextStyle(
                                  fontSize: widget.height / 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))
                        ])
// Text("Hoş Geldin!",
//     textAlign: TextAlign.left,
//     style: TextStyle(
//         fontSize: widget.height / 18, color: Colors.black ,fontWeight: FontWeight.bold)),
                        ),
                  ),
                ),
                Expanded(
                  flex: 15,
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: widget.sol_bosluk),
                      child: Text(
                          "Kampüste neye ihtiyacin varsa , hepsi burada.. ",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: widget.height / 70,
                              color: Colors.black)),
                    ),
                  ),
                ),
              ],
            )),
        Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(100)),
                color: Color(0xffdddddd),
              ),
              child: Column(
                children: [
                  Expanded(
                      flex: 15,
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: widget.sol_bosluk),
                          child: Text(
                            "Hızlı Erişim",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: widget.height / 24,
                                color: Colors.black),
                          ),
                        ),
                      )),
                  Expanded(
                    flex: 50,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                defaultIndex = 1;
                              });
                            },
                            child: fast_button(
                                Color(0xfff12711),
                                Color(0xfff5af19),
                                Colors.black,
                                "lib/assets/images/marma2.png",
                                "Marmaray"),
                          ),
                          InkWell(onTap: () {
                            setState(() {
                              defaultIndex = 2;
                            });
                          },
                            child: fast_button(
                              Color(0xffF00000),
                              Color(0xffbe1238),
                              Colors.white,
                              "lib/assets/images/bus2b.png",
                              "Otobüs",
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(onTap: () {
                            setState(() {
                              defaultIndex = 3;
                            });
                          },
                            child: fast_button(Color(0xffF00000), Color(0xffbe1238),
                                Colors.white, widget.ieee_icon, "IEEE GTÜ"),
                          ),
                          InkWell(onTap: () {
                            setState(() {
                              defaultIndex = 4;
                            });
                          },
                            child: fast_button(
                                Color(0xfff12711),
                                Color(0xfff5af19),
                                Colors.black,
                                "lib/assets/images/yemekhane4.png",
                                "Yemekhane"),
                          ),
                        ],
                      )
                    ]),
                  ),
                ],
              ),
            )),
      ]);
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
        ),
      );
    }
  }
}
