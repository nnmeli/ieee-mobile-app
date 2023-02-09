import 'package:flutter/material.dart';



void main() {
  runApp(const profile_page());
}

class profile_page extends StatefulWidget {
  const profile_page({super.key});

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {

  @override
  Widget build(BuildContext context) {
    return Container(child :Text("profil"));
  }
}
