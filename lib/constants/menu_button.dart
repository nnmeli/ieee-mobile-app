import 'package:flutter/material.dart';

import 'package:ieee_mobile_app/main.dart';

class menu_button extends StatefulWidget {
  Color renk1;
  Color renk2;
  Color baslik_renk;
  String image_adresi;
  String baslik;
  int _rota;

  menu_button(this.renk1, this.renk2, this.baslik_renk, this.image_adresi,
      this.baslik , this._rota);
 //int get rota => rota ;

  @override
  State<menu_button> createState() => _menu_buttonState();
} 
class _menu_buttonState extends State<menu_button> {



  @override
  Widget build(BuildContext context) {

    //var boy= ( MediaQuery.of(context).size.height * 0.18);
    // var ic_boy = ( MediaQuery.of(context).size.height * 0.11);
    var width = ( MediaQuery.of(context).size.width);
    var height = ( MediaQuery.of(context).size.height);
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black54,
                offset: Offset(0,2),
                blurRadius: 6.0
            )
          ],
          gradient: LinearGradient(
            colors: [widget.renk1,widget.renk2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(60),//boy*0.28
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(flex: 2,
              child: SizedBox(
                  width: width/7.5,
                  height: height/5,
                  child: Image.asset(widget.image_adresi)),
            ),
            Expanded(flex: 1 ,child: Text(widget.baslik,style: TextStyle(
                color: widget.baslik_renk,
                fontSize: height/50,
                fontWeight: FontWeight.bold)
            ),)
          ],
        ),
      ),
    );
  }
}