import 'package:flutter/material.dart';



void main() {
  runApp(const duyurular());
}

class duyurular extends StatefulWidget {
  const duyurular({super.key});

  @override
  State<duyurular> createState() => _duyurularState();
}

class _duyurularState extends State<duyurular> {

  @override
  Widget build(BuildContext context) {
    return Container(child :Text("Duyurular"));
  }
}
