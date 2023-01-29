import 'package:flutter/material.dart';

class container_tasarim extends StatelessWidget {
  Color renk1;
  Color renk2;
  Color baslik_renk;
  String image_adresi;
  String baslik;


  container_tasarim(this.renk1, this.renk2, this.baslik_renk, this.image_adresi,
      this.baslik);

  @override
  Widget build(BuildContext context) {
    double boy= ( MediaQuery.of(context).size.width * 0.4);
    double ic_boy = ( MediaQuery.of(context).size.width * 0.25);
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
              borderRadius: BorderRadius.circular(50),
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
                    fontSize: ic_boy/5,
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