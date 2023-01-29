import 'package:flutter/material.dart';

class nvg_bar extends StatelessWidget {
  const nvg_bar({
    Key? key,

  }) : super(key: key);

  final ieee_icon = "lib/assets/images/ieee_icon.png" ;
  final gtu_icon = "lib/assets/images/gtü_icon.png" ;
  final profile_icon = "lib/assets/images/profile1b.png";
  final home_icon = "lib/assets/images/home1b.png";
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff00609c),
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white,
        iconSize: height/30,


        items: [
      BottomNavigationBarItem(
        icon: Image.asset(home_icon ,  height: height/30,),
        label: 'Ana Sayfa',
      ),
      BottomNavigationBarItem(
        icon: Image.asset(gtu_icon ,  height: height/30,),
        label: 'Gebze Teknik Üniversitesi',
      ),
      BottomNavigationBarItem(
          icon: Image.asset(ieee_icon ,   height: height/30,),
          label: 'IEEE GTÜ'),
      BottomNavigationBarItem(
        icon: Image.asset(profile_icon ,  height: height/30,),
        label: 'Profil',
      ),
    ]);
  }
}


