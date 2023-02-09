import 'package:flutter/material.dart';



void main() {
  runApp(const haberler());
}

class haberler extends StatefulWidget {
  const haberler({super.key});

  @override
  State<haberler> createState() => _haberlerState();
}

class _haberlerState extends State<haberler> {

  @override
  Widget build(BuildContext context) {
    return Container(child :Text("Haberler"));
  }
}
