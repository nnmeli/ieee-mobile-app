import 'package:flutter/material.dart';



void main() {
  runApp(const idari_kurul());
}

class idari_kurul extends StatefulWidget {
  const idari_kurul({super.key});

  @override
  State<idari_kurul> createState() => _idari_kurulState();
}

class _idari_kurulState extends State<idari_kurul> {

  @override
  Widget build(BuildContext context) {
    return Container(child :Text("idarikurul"));
  }
}
