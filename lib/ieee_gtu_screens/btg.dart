import 'package:flutter/material.dart';



void main() {
  runApp(const btg());
}

class btg extends StatefulWidget {
  const btg({super.key});

  @override
  State<btg> createState() => _btgState();
}

class _btgState extends State<btg> {

  @override
  Widget build(BuildContext context) {
    return Container(child :Text("btg"));
  }
}
