import 'package:flutter/material.dart';
import 'package:ieee_mobile_app/helper/helper.dart';

import '../screens/profile_page.dart';


void main() {
  runApp(const login());
}

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('login'),
    ),
    body: ListView(
      padding: EdgeInsets.all(16),
      children: <Widget>[
        TextField(
          controller: nameController,
        ),
        TextField(
          controller: surnameController,
        ),
        ElevatedButton(onPressed: (){
          Helper.login(nameController.text, surnameController.text);
          if(Helper.isLogin){
            // Burada sayfa yonlendirilmesi yapilacak!
          }
        }, child: Text('login'))
      ],

    ),
  );

}
