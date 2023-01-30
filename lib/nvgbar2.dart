import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;


  BottomNavBar({required this.currentIndex, required this.onTap});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    final ieee_icon = "lib/assets/images/ieee_icon.png" ;

    final gtu_icon = "lib/assets/images/gtü_icon.png" ;

    final profile_icon = "lib/assets/images/profile1b.png";

    final home_icon = "lib/assets/images/home1b.png";
    return Container(height: height/12,decoration: BoxDecoration(border: Border(top: BorderSide(color: Colors.black26,width: height/200)) , color: Color(0xff00609c),),
      child: SalomonBottomBar(
        currentIndex: widget.currentIndex,
        onTap: widget.onTap,
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: Image.asset(home_icon ,  ),
            title: Text("Ana Sayfa"),
            selectedColor: Colors.white,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: Image.asset(gtu_icon ,  ),
            title: Text("GTÜ"),
            selectedColor:  Color(0xffF00000),
          ),

          /// Search
          SalomonBottomBarItem(
            icon: Image.asset(ieee_icon ,  ),
            title: Text("IEEE"),
            selectedColor: Color(0xfff5af19),
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: Image.asset(profile_icon , ),
            title: Text("Profil"),
            selectedColor: Colors.black54,
          ),
        ],
      ),
    );
  }
}

