import 'package:flutter/material.dart';
import 'package:ieee_mobile_app/profile_screens/notLogin.dart';
import "package:ieee_mobile_app/profile_screens/loginPage.dart";
import "package:ieee_mobile_app/profile_screens/signupPage.dart";
import 'package:provider/provider.dart';
import 'package:ieee_mobile_app/constants/stateData.dart';



class profile_page extends StatefulWidget {
  const profile_page({super.key});

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {

  @override
  Widget build(BuildContext context) {

    var currentIndex = Provider.of<StateData>(context).profileIndex; ;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    var _pages = [
      notLogin(),
      //LoginPage(),
      //SignupPage(),
      loginTrue(height, width),
    ];

   if (currentIndex==0){return _pages[currentIndex];}
   else {
     return WillPopScope(
       onWillPop: () async {
         setState(() {
           Provider.of<StateData>(context, listen: false).newIndexProfile(0);
         });
         return false;
       },
       child: Scaffold(
         body: _pages[currentIndex],
       ),);
   }
  }


  //
  // return Scaffold(
  // body: Center(child : _pages.elementAt(currentIndex),
  //





  Column loginTrue(double height, double width) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: height/17,
          backgroundImage: NetworkImage(
              'https://www.example.com/images/profile.jpg'),
        ),
        Text(
          'Melih Tumur',
          style: TextStyle(
            fontSize: height/20,
            fontWeight: FontWeight.bold,

          ),
        ),
        Text(
          'COMPUTER SOCIETY',
          style: TextStyle(
            fontSize: height/45,
            color: Colors.teal[100],
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: height/40,
          width: width/1.5,
          child: Divider(
            color: Colors.teal.shade100,
          ),
        ),
        tercih_card(height , Icons.school ,"Elektronik Mühendisliği"),
        tercih_card(height , Icons.notification_important ,"Computer Society Bildirimleri \n Elk müh bildirimleri \n Comsoc Bildirimleri \n Genel Okul Duyuruları" , ),
      ],
    );
  }

  Card tercih_card(double height,icon,icerik,) {
    return Card(
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          child: ListTile(
            leading: Icon(
              icon,
              color: Colors.teal,
            ),
            title: Text(
              icerik,
              style: TextStyle(
               // color: Colors.teal.shade900,
                fontSize: height/45,
              ),
            ),
          ),
        );
  }
}
