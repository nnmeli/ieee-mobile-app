import 'package:flutter/material.dart';



void main() {
  runApp(const etkinlik_takvim());
}

class etkinlik_takvim extends StatefulWidget {
  const etkinlik_takvim({super.key});

  @override
  State<etkinlik_takvim> createState() => _etkinlik_takvimState();
}

class _etkinlik_takvimState extends State<etkinlik_takvim> {

  @override
  Widget build(BuildContext context) {
    return Container(child :Text("takvim"));
  }
}
