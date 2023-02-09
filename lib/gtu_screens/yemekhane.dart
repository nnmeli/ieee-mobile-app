import 'package:flutter/material.dart';



void main() {
  runApp(const yemekhane());
}

class yemekhane extends StatefulWidget {
  const yemekhane({super.key});

  @override
  State<yemekhane> createState() => _yemekhaneState();
}

class _yemekhaneState extends State<yemekhane> {

  @override
  Widget build(BuildContext context) {
    return Container(child :Text("yemekhane"));
  }
}
