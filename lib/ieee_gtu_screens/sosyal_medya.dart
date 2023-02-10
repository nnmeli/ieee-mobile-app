import 'package:flutter/material.dart';



void main() {
  runApp(const sosyal_medya());
}

class sosyal_medya extends StatefulWidget {
  const sosyal_medya({super.key});

  @override
  State<sosyal_medya> createState() => _sosyal_medyaState();
}

class _sosyal_medyaState extends State<sosyal_medya> {

  @override
  Widget build(BuildContext context) {
    return Container(child :Text("sosyalmedya"));
  }
}
