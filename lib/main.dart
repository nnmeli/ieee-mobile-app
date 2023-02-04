import 'package:flutter/material.dart';
import 'package:ieee_mobile_app/screens/gtu_page.dart';
import 'package:ieee_mobile_app/screens/marmaray_page.dart';
import 'package:ieee_mobile_app/screens/profile_page.dart';
import 'screens/bus_page.dart';
import 'screens/ieee_gtu_page.dart';
import 'screens/komiteler_page.dart';
import 'constants/app_bar.dart';
import 'constants/nvg_bar.dart';
import 'constants/buttons_fast.dart';
import 'constants/nvgbar2.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ieee_mobile_app/constants/ieee_gtu_menu.dart';




void main() {
  runApp(const main_page());
}

class main_page extends StatelessWidget {
  const main_page({super.key});


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
    var _pages = [ Body(sol_bosluk: sol_bosluk, height: height, ieee_icon: ieee_icon) , gtu_page(),ieee_gtu_page(),profile_page(),long_menu() ];

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
        body: Center(
    child: _pages.elementAt(_currentIndex))//Body(sol_bosluk: sol_bosluk, height: height, ieee_icon: ieee_icon),
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
                            "Marmaray",komiteler_page()
                           ),
                        fast_button(
                            Color(0xffF00000),
                            Color(0xffbe1238),
                            Colors.white,
                            "lib/assets/images/bus2b.png",
                            "Otobüs",
                            bus_page())
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
                            "IEEE GTÜ",ieee_gtu_page()),
                        fast_button(
                            Color(0xfff12711),
                            Color(0xfff5af19),
                            Colors.black,
                            "lib/assets/images/yemekhane4.png",
                            "Yemekhane",komiteler_page()),
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
