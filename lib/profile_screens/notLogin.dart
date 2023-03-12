import 'package:flutter/material.dart';
import 'package:ieee_mobile_app/constants/menu_button.dart';
import 'package:provider/provider.dart';
import 'package:ieee_mobile_app/constants/stateData.dart';
import 'package:ieee_mobile_app/profile_screens/loginPage.dart';
import 'package:ieee_mobile_app/profile_screens/signupPage.dart';


class notLogin extends StatefulWidget {
  const notLogin({Key? key}) : super(key: key);

  @override
  State<notLogin> createState() => _notLoginState();
}

class _notLoginState extends State<notLogin> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              child: Image.asset(height: height/3,
                  "lib/assets/images/login.png"),
            ),
            Text(
              "Profil ekranını görebilmek için giriş yapmış olman gerekli",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: height/40),
            ),
            SizedBox(height: 16.0),
            TextButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue

              ),
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
                //   setState(() {
              //   Provider.of<StateData>(context, listen: false).newIndexProfile(1);
              // });

              },
              child: Text("Giriş Yap" ,style:TextStyle(color: Colors.white) ),
            ),
            SizedBox(height: 8.0),
            OutlinedButton(
              style: ButtonStyle(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );

              //   setState(() {
              //   Provider.of<StateData>(context, listen: false).newIndexProfile(2);
              // });

              },
              child: Text("Kayıt Ol" ,style:TextStyle(color: Colors.black) ),
            ),
          ],
        ),
      ),
    );
  }
}
