import 'package:flutter/material.dart';
import 'package:ieee_mobile_app/helper/helper.dart';


void main() {
  runApp(const register());
}

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final nameController = TextEditingController();
  final surnameController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Register'),
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
        ElevatedButton(onPressed: () async{
          await Helper.register(nameController.text, surnameController.text,"cemilfatihyol@gmail.com","+905459739699","2","PM","CSE","GTU");

          //hesabı aktive etmek için link ile doğrulama sayfası
          Navigator.pushReplacementNamed(context, "/verifyPage");

          }, child: Text('Register'))
      ],

    ),
  );

}
