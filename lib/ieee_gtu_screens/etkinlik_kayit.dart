import 'package:flutter/material.dart';



void main() {
  runApp(const etkinlik_kayit());
}

class etkinlik_kayit extends StatefulWidget {
  const etkinlik_kayit({super.key});

  @override
  State<etkinlik_kayit> createState() => _etkinlik_kayitState();
}

class _etkinlik_kayitState extends State<etkinlik_kayit> {

  @override
  Widget build(BuildContext context) {
    return Container(child :Text("kayıt"));
  }
}
