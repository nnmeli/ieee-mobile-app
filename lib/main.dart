import 'package:flutter/material.dart';
import 'package:ieee_mobile_app/gtu_screens/marmaray_page.dart';
import 'package:ieee_mobile_app/screens/ana_sayfa.dart';
import 'package:ieee_mobile_app/screens/profile_page.dart';
import 'package:ieee_mobile_app/screens/gtu_menu.dart';
import 'constants/app_bar.dart';
import 'constants/nvg_bar.dart';
import 'constants/buttons_fast.dart';
import 'constants/nvgbar2.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ieee_mobile_app/screens/ieee_gtu_menu.dart';
import 'package:ieee_mobile_app/gtu_screens/bus_menu.dart';
import 'package:ieee_mobile_app/ieee_gtu_screens/komiteler_menu.dart';

void main() {
  runApp(const main_page());
}

class main_page extends StatelessWidget {
  const main_page({super.key});

//double width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "TitilliumWeb",
      ),
      debugShowCheckedModeBanner: false,
      home:
          Home(),
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


    var _pages = [
      ana_sayfa(sol_bosluk: sol_bosluk, height: height, ieee_icon: ieee_icon),
      gtu_menu(),
      ieee_gtu_menu(),
      profile_page()
    ];

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          drawer: side_menu(),
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(height / 12),
            child: app_bar(),
          ),
          bottomNavigationBar: BottomNavBar(
            currentIndex: _currentIndex,
            onTap: (i) => setState(
              () {
                _currentIndex = i;
              },
            ), //SizedBox(
          ),
          body: Center(child: _pages.elementAt(_currentIndex))),
    );
  }
}
