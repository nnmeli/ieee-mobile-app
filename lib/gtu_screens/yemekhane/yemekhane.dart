import 'package:flutter/material.dart';
import 'package:ieee_mobile_app/gtu_screens/yemekhane/fortry.dart';


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
    return Center(child : GununMenusu());
  }
}
