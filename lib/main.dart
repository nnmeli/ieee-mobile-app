import 'package:flutter/material.dart';
import 'package:yasam_app/gridview.dart';
import "./app_bar.dart";
import './nvg_bar.dart';
import './buttons_fast.dart';
import 'nvgbar2.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


//double width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "TitilliumWeb" , ),
      debugShowCheckedModeBanner: false,
      home:
          Home(), // gereksiz bir hata verdiginden dolayo , home'u asaı attım .
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
var _currentIndex = 0;
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var sol_bosluk = width * 0.05;
    final ieee_icon = "lib/assets/images/ieee_icon.png";
    final gtu_icon = "lib/assets/images/gtü_icon.png";

    return SafeArea(
      child: Scaffold(backgroundColor: Colors.white,
        drawer: side_menu(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(height / 12),
          child: app_bar(),
        ),
        bottomNavigationBar:  BottomNavBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() { _currentIndex = i;}),//SizedBox(
          //height: height / 12,
         // child: nvg_bar(),
        ),
        body: Body(sol_bosluk: sol_bosluk, height: height, ieee_icon: ieee_icon),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({
    Key? key,
    required this.sol_bosluk,
    required this.height,
    required this.ieee_icon,


  }) : super(key: key);

  final double sol_bosluk;
  final double height;
  final String ieee_icon;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
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
                            fontSize: widget.height / 32, color: Colors.black)),
                  ),
                ),
              ),
              Expanded(
                flex: 60,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: widget.sol_bosluk),
                    child: AnimatedTextKit(
                        animatedTexts: [
                         TyperAnimatedText( speed: Duration(milliseconds: 100),
                            'Hoş Geldin!',textAlign: TextAlign.left, textStyle: TextStyle(fontSize: widget.height / 18, color: Colors.black ,fontWeight: FontWeight.bold))])
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
                            fontSize: widget.height / 70, color: Colors.black)),
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
                        padding: EdgeInsets.only(left: widget.sol_bosluk),
                        child: Text(
                          "Hızlı Erişim",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: widget.height / 24, color: Colors.black),
                        ),
                      ),
                    )),
                Expanded(
                  flex: 50,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        fast_button(
                            Color(0xfff12711),
                            Color(0xfff5af19),
                            Colors.black,
                            "lib/assets/images/marma2.png",
                            "Marmaray"),
                        fast_button(
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
                        fast_button(
                            Color(0xffF00000),
                            Color(0xffbe1238),
                            Colors.white,
                            widget.ieee_icon,
                            "IEEE GTÜ"),
                        fast_button(
                            Color(0xfff12711),
                            Color(0xfff5af19),
                            Colors.black,
                            "lib/assets/images/yemekhane4.png",
                            "Yemekhane"),
                      ],
                    )
                  ]),
                ),
              ],
            ),
          )),
    ]);
  }
}

//lib/assets/images/marma2b.png
//lib/assets/images/bus2.png
//lib/assets/images/yemekhane4b.png
