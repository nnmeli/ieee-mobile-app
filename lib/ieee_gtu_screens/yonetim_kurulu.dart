import 'package:flutter/material.dart';



void main() {
  runApp(const yonetim_kurulu());
}

class yonetim_kurulu extends StatefulWidget {
  const yonetim_kurulu({super.key});

  @override
  State<yonetim_kurulu> createState() => _yonetim_kuruluState();
}

class _yonetim_kuruluState extends State<yonetim_kurulu> {

  @override
  Widget build(BuildContext context) {
    return Container(child :Text("yonetimkurulu"));
  }
}
