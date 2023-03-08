import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ieee_mobile_app/helper/user.dart';
import 'package:ieee_mobile_app/main.dart';

class Helper{

  static bool isLogin = false;

  static Future<void> register(name, surname, mail, telNum, sClass, department, committee, school, password) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc();

    final user = User(
        id: docUser.id,
        name: name,
        surname: surname,
        mail: mail,
        telNum: telNum,
        sClass: sClass,
        department: department,
        committee: committee,
        school: school,
        password: password);
    final json = user.toJson();

    await docUser.set(json);
  }

  static Future<void> login(mail, password) async {

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
  }

  static void logout(){
    isLogin = false;
  }

  static bool isLog(){
    return isLogin;
  }

}