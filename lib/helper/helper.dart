

import 'package:ieee_mobile_app/helper/user.dart';
import 'package:ieee_mobile_app/service/firebaseService.dart';

class Helper{

  static bool isLogin = false;

  static Future<void> register(name, surname, mail, telNum, sClass, department, committee, school, password) async {

    final docUser = firebaseService().setCollection('user');




     final registerUser = user(
        id: docUser!.id,
        name: name,
        surname: surname,
        mail: mail,
        telNum: telNum,
        sClass: sClass,
        department: department,
        committee: committee,
        school: school,
        password: password);
     print(registerUser.toJson());

    final json = registerUser.toJson();

  //navigate to verify page and get register
    await firebaseService().setData(docUser, json);
    await firebaseService().createUser(mail, password);



  }

  static Future<void> login(mail, password) async {

    firebaseService().loginUser(mail, password);



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
