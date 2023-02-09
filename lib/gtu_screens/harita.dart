import 'package:flutter/material.dart';



void main() {
  runApp(const harita());
}

class harita extends StatefulWidget {
  const harita({super.key});

  @override
  State<harita> createState() => _haritaState();
}

class _haritaState extends State<harita> {

  @override
  Widget build(BuildContext context) {
    return Container(child :Text("harita"));
  }
}
