import 'package:flutter/material.dart';
import "./app_bar.dart";

import './nvg_bar.dart';

import './buttons_fast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//double width = MediaQuery.of(context).size.width;
//double height = MediaQuery.of(context).size.height;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "TitilliumWeb"),
      debugShowCheckedModeBanner: false,
      home:
          Home(), // gereksiz bir hata verdiginden dolayo , home'u asaı attım .
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double sol_bosluk = width * 0.05;
    final ieee_icon = "lib/assets/images/ieee_icon.png";
    final gtu_icon = "lib/assets/images/gtü_icon.png";
    return SafeArea(
      child: Scaffold(
        drawer: side_menu(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(height / 12),
          child: app_bar(),
        ),
        bottomNavigationBar: SizedBox(
          height: height / 12,
          child: nvg_bar(),
        ),
        body: Column(children: [
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    flex: 40,
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: sol_bosluk),
                        child: Text("IEEE GTÜ Mobil Uygulamasına",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: width / 14, color: Colors.black)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 60,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: sol_bosluk),
                        child: Text("Hoş Geldin!",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: width / 8, color: Colors.black ,fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 15,
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: sol_bosluk),
                        child: Text(
                            "Kampüste neye ihtiyacin varsa , hepsi burada.. ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: width / 30, color: Colors.black)),
                      ),
                    ),
                  ),
                ],
              )),
          Expanded(
              flex: 7,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(100)),
                  color: Color(0xffdddddd),
                ),
                child: Column(
                  children: [
                    Expanded(
                        flex: 15,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: sol_bosluk),
                            child: Text(
                              "Hızlı Erişim",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: width / 12, color: Colors.black),
                            ),
                          ),
                        )),
                    Expanded(
                      flex: 50,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            container_tasarim(
                                Color(0xfff12711),
                                Color(0xfff5af19),
                                Colors.black,
                                "lib/assets/images/marma2.png",
                                "Marmaray"),
                            container_tasarim(
                                Color(0xffF00000),
                                Color(0xffbe1238),
                                Colors.white,
                                "lib/assets/images/bus2b.png",
                                "Otobüs")
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            container_tasarim(
                                Color(0xffF00000),
                                Color(0xffbe1238),
                                Colors.white,
                                ieee_icon,
                                "IEEE GTÜ"),
                            container_tasarim(
                                Color(0xfff12711),
                                Color(0xfff5af19),
                                Colors.black,
                                "lib/assets/images/yemekhane4.png",
                                "Yemekhane"),
                          ],
                        ),
                      ]),
                    ),
                  ],
                ),
              )),
        ]),
      ),
    );
  }
}

//lib/assets/images/marma2b.png
//lib/assets/images/bus2.png
//lib/assets/images/yemekhane4b.png
