import 'package:flutter/material.dart';

class fast_button extends StatelessWidget {
  Color renk1;
  Color renk2;
  Color baslik_renk;
  String image_adresi;
  String baslik;


  fast_button(this.renk1, this.renk2, this.baslik_renk, this.image_adresi,
      this.baslik);

  @override
  Widget build(BuildContext context) {
    var boy= ( MediaQuery.of(context).size.height * 0.18);
    var ic_boy = ( MediaQuery.of(context).size.height * 0.11);
    return Padding(
      padding: EdgeInsets.all(boy*0.05),
      child: SizedBox(
        width:boy,
        height: boy,
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
              borderRadius: BorderRadius.circular(45),//boy*0.28
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: ic_boy,
                    height: ic_boy,
                    child: Image.asset(image_adresi)),
                Text(baslik,style: TextStyle(
                    color: baslik_renk,
                    fontSize: boy*0.14,
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}