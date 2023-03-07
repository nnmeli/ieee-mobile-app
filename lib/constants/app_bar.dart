import 'package:flutter/material.dart';
import 'package:ieee_mobile_app/gtu_screens/bus_menu.dart';
import 'package:provider/provider.dart';
import 'package:ieee_mobile_app/constants/stateData.dart';

class app_bar extends StatelessWidget {
  const app_bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var bar_height = height / 60;
    return AppBar(
      foregroundColor: Colors.white,
      bottomOpacity: 0,

      //elevation: 0,
      shadowColor: Color(0xff00609c),
      backgroundColor: Colors.white,
      title: Container(
          padding: EdgeInsets.fromLTRB(0.0, height / 36, 0.0, 0.0),
          child: Image.asset(
            "lib/assets/images/ieee_colored.png",
            height: height / 15,
          )),
      centerTitle: true,
      leading: Builder(builder: (context) {
        return IconButton(
            padding: EdgeInsets.fromLTRB(0.0, height / 36, 0.0, 0.0),
            icon: Icon(Icons.menu_open_rounded,
                color: Color(0xff00609c), size: 30),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            });
      }),
      actions: [
        IconButton(
            padding: EdgeInsets.fromLTRB(0.0, height / 36, 0.0, 0.0),
            icon: Icon(Icons.settings, color: Colors.blueAccent, size: 30),
            onPressed: () {})
      ],
    );
  }
}

class side_menu extends StatefulWidget {
  side_menu({
    Key? key,
  }) : super(key: key);

  @override
  State<side_menu> createState() => _side_menuState();
}

class _side_menuState extends State<side_menu> {
  @override
  Widget build(BuildContext context) {
    indexChanger(int atMain, int atGtu, int atIeee) {
      Provider.of<StateData>(context, listen: false).newIndexMain(atMain);
      Provider.of<StateData>(context, listen: false).newIndexGtu(atGtu);
      Provider.of<StateData>(context, listen: false).newIndexIeee(atIeee);
    }
    // Bu fonksiyonu Drawer itemlerine basınca çalıştıracağız
    // Bu sayede diğer sayfalardaki indexleri değiştirebileceğiz ve drawerdan sayfa değişimi yapabileceğiz

    return Drawer(
      child: ListView.builder(
        itemCount: drawerItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(drawerItems[index]),
            onTap: () {
              setState(() {
                indexChanger(rota[index][0], rota[index][1], rota[index][2]);
              });
            },
          );
        },
      ),
    );
  }
}

// Provider.of<StateData>(context, listen: false).newIndexMain(1);
// Provider.of<StateData>(context, listen: false).newIndex(1);

final drawerItems = [
  "BTG",
  "Komitelerimiz",
  "Etkinlikler",
  "Yoklama",
  "Sosyal Medya",
  "Yemekhane",
  "Otobüs",
  "Okul Duyuruları",
  "Akademik Takvim",
  "Akademisyenler",
  "Uygulama Hakkında",
  "Öneri/Şikayet"
];
//
// final rota = [
//   Provider.of<StateData>(context, listen: false).newIndexMain(2) , Provider.of<StateData>(context, listen: false).newIndexIeee(1) , //BTG
//   [ Provider.of<StateData>(context, listen: false).newIndexMain(2) , Provider.of<StateData>(context, listen: false).newIndexIeee(6) ] , //Komitelerimiz
//   [ Provider.of<StateData>(context, listen: false).newIndexMain(2) , Provider.of<StateData>(context, listen: false).newIndexIeee(2) ] , //Etkinlikler
//   [ Provider.of<StateData>(context, listen: false).newIndexMain(1) , Provider.of<StateData>(context, listen: false).newIndexMain(1) ] , //"Yoklama"
//   [ Provider.of<StateData>(context, listen: false).newIndexMain(2) , Provider.of<StateData>(context, listen: false).newIndexIeee(4) ] , //Sosyal Medya
//   [ Provider.of<StateData>(context, listen: false).newIndexMain(1) , Provider.of<StateData>(context, listen: false).newIndexGtu(2) ] , //Yemekhane
//   [ Provider.of<StateData>(context, listen: false).newIndexMain(1) , Provider.of<StateData>(context, listen: false).newIndexGtu(3) ] , //Otobüs
//   [ Provider.of<StateData>(context, listen: false).newIndexMain(1) , Provider.of<StateData>(context, listen: false).newIndexGtu(1) ] , //Okul Duyuruları
//   [ Provider.of<StateData>(context, listen: false).newIndexMain(1) , Provider.of<StateData>(context, listen: false).newIndexGtu(5) ] , //Akademik Takvim
//   [ Provider.of<StateData>(context, listen: false).newIndexMain(1) , Provider.of<StateData>(context, listen: false).newIndexGtu(6) ] , //Akademisyenler
//   [ Provider.of<StateData>(context, listen: false).newIndexMain(1) , Provider.of<StateData>(context, listen: false).newIndexMain(1) ] , //Uygulama Hakkında
//   [ Provider.of<StateData>(context, listen: false).newIndexMain(1) , Provider.of<StateData>(context, listen: false).newIndexMain(1) ] ]; //Öneri/Şikayet
//



final rota = [
  // main , gtu , ieee
  [2, 0, 1], // BTG
  [2, 0, 6], //Komitelerimiz
  [2, 0, 2], // Etkinlikler
  [2, 0, 1], // Yoklama  EKSİKKKKKKKKKKKK
  [2, 0, 4], // Sosyal Medya
  [1, 2, 0], // Yemekhane
  [1, 3, 0], // Otobüs
  [1, 1, 0], // Okul Duyuruları
  [1, 5, 0], // Akademik Takvim
  [1, 6, 0], // Akademisyenler
  [2, 0, 1], // Uygulama Hakkında EKSİKKKKKKKKKK
  [2, 0, 1], // Öneri Şikayet EKSİKKKKKKKKKKK

];
