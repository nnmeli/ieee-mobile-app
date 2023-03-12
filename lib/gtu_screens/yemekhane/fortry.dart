import 'package:flutter/material.dart';
// import 'package:ieee_mobile_app/yemekSayfasi.dart';

class GununMenusu extends StatefulWidget {
  const GununMenusu({Key? key}) : super(key: key);

  @override
  State<GununMenusu> createState() => _GununMenusuState();
}

class _GununMenusuState extends State<GununMenusu> {
  var yemekler=[["MISIR ÇORBA","BULGURLU KIYMALI ISPANAK","MAKARNA","YOĞURT"],["naneli yoğurt çorba","etli nohut","pirinç pilavı","turşu"],
    ["domates çorba","orman kebabı","bulgur pilavı","cevizli baklava"],["mercimek çorba","içli köfte / püre","soslu makarna","ayran"],["şehriye çorba","piliç topkapı","sebze buketi","meyve"], ["tutmaç çorba","hünkar beğendi","pirinç pilavı","puding"]];

  var kalori=[["116","250","320","90"],["135","408","305","36"],
    ["168","386","245","445"],["195","390","350","90"],
    ["158","305","268","60"]];
  final _controller = PageController();
  int _currentIndex = 0;
  var _selectedIndex = 0;
  int gun=12;
  String ay="03";
  String yil="2023";

  //
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          SizedBox(
            height: height/2,
            child: PageView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: SizedBox(

                    child: Container(

                      decoration: BoxDecoration(//border: Border.all(),
                        shape: BoxShape.rectangle,
                        //border: Border.all(color: Colors.black ,strokeAlign: StrokeAlign.inside , width: 2),
                        // boxShadow: [
                        //   BoxShadow(
                        //       color: Colors.red,
                        //      //offset: Offset(0,1),
                        //       blurRadius: 5.0
                        //   )
                       // ],
                        color: Color(0xffFEF5E7),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          SizedBox(
                            width: width/1.5,
                            height: height/17,
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0,2),
                                      //blurRadius: 10.0
                                  )
                                ],
                                color: Color(0xff3086BB),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    child: Icon(Icons.food_bank,color: Colors.white),
                                   height: height /35, width: width/10,
                                  ),
                                  Text("Günün Menüsü",style: TextStyle(fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),)
                                ],
                              ),
                            ),
                          ),

                          Text("${gun+index}.${ay}.${yil}",style: TextStyle(
                              color: Colors.black,
                              //fontWeight: FontWeight.bold,
                              fontSize: 18
                          ),),
                          SizedBox(height: height /50,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(

                                  children: [
                                    Text(yemekler[index][0],style: TextStyle(fontSize: 25 ,fontWeight: FontWeight.bold),),

                                    Text(yemekler[index][1],style: TextStyle(fontSize: 25),),

                                    Text(yemekler[index][2],style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),

                                    Text(yemekler[index][3],style: TextStyle(fontSize: 25),),
                                  ],
                                ),
                              ),
                              // Column(
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     Text("${kalori[index][0]} cal",style: TextStyle(
                              //
                              //         fontSize: 20
                              //     ),),
                              //     Text("${kalori[index][1]} cal",style: TextStyle(
                              //
                              //         fontSize: 20
                              //     ),),
                              //     Text("${kalori[index][2]} cal",style: TextStyle(
                              //
                              //         fontSize: 20
                              //     ),),
                              //     Text("${kalori[index][3]} cal",style: TextStyle(
                              //
                              //         fontSize: 20
                              //     ),),
                              //   ],
                              // ),
                            ],
                          ),
                          Spacer()
                        ],
                      ),
                    ),
                  ),
                );
              },
              controller: _controller,
              onPageChanged: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: SizedBox(
              height: height /50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) => buildDot(index: index)
                ),
              ),
            ),
          ),

          SizedBox(
            height: height / 15,
            width: width / 1.3,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 10,
                  shadowColor: Colors.black,
                  primary: Color(0xfff00000),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Tüm Günleri Görmek İçin "),
                  Icon(Icons.ads_click_outlined),
                ],
              ),
              onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => yemekSayfasi(),));
              },
            ),
          )
        ],
      ),
    );
  }



  Widget buildDot({required int index}) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _currentIndex == index ? Colors.blue : Colors.grey,
      ),
    );
  }
}
