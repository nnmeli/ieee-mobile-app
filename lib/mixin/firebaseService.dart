import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';


mixin firebaseMixin {

  final fire_auth = FirebaseAuth.instance;


  DocumentReference? setCollection(String name) {

    try{
      final docUser = FirebaseFirestore.instance.collection(name).doc();
      return docUser;

    }catch (error){
      print(error.toString());
    }
  }

  Future<void> setData( DocumentReference ref ,Map<String, dynamic> json) async{

    try{
      await ref.set(json);

    }catch (error){
      print(error.toString());
    }
  }



  Future<void> createUser(String email , String password) async {
    try{

      var snapshot = await fire_auth.createUserWithEmailAndPassword(email: email, password: password);
      loginUser(email, password);

    }catch(error){
      print(error.toString());
    }

  }

  Future<void> loginUser(String email , String password) async{
    try{

      var snapshot = await fire_auth.signInWithEmailAndPassword(email: email, password: password);

    }catch(error){
      print(error.toString());
    }
  }

  Future<void> checkEmailVerified(Timer timer, BuildContext context) async{
    final user = fire_auth.currentUser;

    await user!.reload();

    if(user!.emailVerified){
      timer.cancel();
      Navigator.pushReplacementNamed(context, "/homePage");

    }
  }





}
