import 'package:flutter/material.dart';

class menu_button extends StatelessWidget {
  Color renk1;
  Color renk2;
  Color baslik_renk;
  String image_adresi;
  String baslik;


  menu_button(this.renk1, this.renk2, this.baslik_renk, this.image_adresi,
      this.baslik);

  @override
  Widget build(BuildContext context) {
    //var boy= ( MediaQuery.of(context).size.height * 0.18);
   // var ic_boy = ( MediaQuery.of(context).size.height * 0.11);
    var width = ( MediaQuery.of(context).size.width);
    return Padding(
      padding: EdgeInsets.all(10),
      child: InkWell(onTap: (){print("tıklandı");},
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
              colors: [renk1,renk2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(60),//boy*0.28
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(flex: 3,
                child: SizedBox(
                    width: width/6,
                    height: width/6,
                    child: Image.asset(image_adresi)),
              ),
              Expanded(flex: 1 ,child: Text(baslik,style: TextStyle(
                  color: baslik_renk,
                  //fontSize: width*0.03,
                  fontWeight: FontWeight.bold)
              ),)
            ],
          ),
        ),
      ),
    );
  }
}