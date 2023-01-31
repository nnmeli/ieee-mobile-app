import 'package:flutter/material.dart';



class app_bar extends StatelessWidget {
  const app_bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var bar_height = height/60 ;
    return AppBar(

      foregroundColor: Colors.white,
      bottomOpacity: 0,

      //elevation: 0,
      shadowColor:Color(0xff00609c) ,
      backgroundColor: Colors.white,
      title: Container(  padding: EdgeInsets.fromLTRB(0.0, height/36, 0.0, 0.0),
          child: Image.asset(
            "lib/assets/images/ieee_colored.png",
            height: height/15,
          )),
      centerTitle: true,
      leading: Builder(
          builder: (context) {
            return IconButton(padding: EdgeInsets.fromLTRB(0.0, height/36, 0.0, 0.0),
                icon: Icon(Icons.menu_open_rounded,
                    color: Color(0xff00609c), size: 30),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                });
          }
      ),
      actions: [
        IconButton(padding: EdgeInsets.fromLTRB(0.0, height/36, 0.0, 0.0),
            icon: Icon(Icons.settings, color: Colors.blueAccent, size: 30),
            onPressed: () {})
      ],
    );
  }
}

class side_menu extends StatelessWidget {
  const side_menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
          ListTile(

            title: Text("IEEE GTÜ Mobile App" , style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold)),
            onTap: () {},
          )
        ]));
  }
}