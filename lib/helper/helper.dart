

import 'package:flutter/cupertino.dart';
import 'package:ieee_mobile_app/helper/user.dart';
import 'package:ieee_mobile_app/mixin/firebaseService.dart';
import 'package:provider/provider.dart';

class Helper with firebaseMixin, ChangeNotifier{

  static bool isLogin = false;
  static bool isVerified = false;

  static Future<void> register(name, surname, mail, telNum, sClass, department, committee, password) async {

    final docUser = Helper().setCollection('user');




     final registerUser = user(
        id: docUser!.id,
        name: name,
        surname: surname,
        mail: mail,
        telNum: telNum,
        sClass: sClass,
        department: department,
        committee: committee,
        password: password);
     print(registerUser.toJson());

    final json = registerUser.toJson();

  //navigate to verify page and get register
    await Helper().setData(docUser, json);
    await Helper().createUser(mail, password);



  }

  static Future<void> login(mail, password) async {

    Helper().loginUser(mail, password);
    isLogin = true;



    /*
    await FirebaseFirestore.instance
    .collection('users')
    .get()
    .then((QuerySnapshot querySnapshot){
      querySnapshot.docs.forEach((doc) {
        if(doc["mail"] == mail && password == doc["password"]) {
          isLogin = true;
        }
      });
    });

    if(isLogin){

      print("correct Password!");
    }
    else{
      print("wrong password");
    }

     */

  }

  static void logout(){
    isLogin = false;
  }

  static bool isLog(){
    return isLogin;
  }


}

