import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ieee_mobile_app/mixin/firebaseService.dart';

class mailVerifyService extends StatefulWidget with firebaseMixin {
   mailVerifyService({Key? key}) : super(key: key);

  @override
  State<mailVerifyService> createState() => _mailVerifyServiceState();
}

class _mailVerifyServiceState extends State<mailVerifyService> {

  // firebase service
  final _auth = mailVerifyService().fire_auth;

  late Timer timer;
  late User? user;
  late bool isVerified;

  @override
  void initState() {

    user = _auth.currentUser;
    user!.sendEmailVerification();

    timer = Timer.periodic( Duration(seconds: 3), (timer) async {
      mailVerifyService().checkEmailVerified(timer , context);
    });


    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer?.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("We sent an e-mail to ${user!.email}. Please verify your e-mail address" ,style: Theme.of(context).textTheme.subtitle1)
        ],
      ),
    );
  }
}
