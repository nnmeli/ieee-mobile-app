import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: imagesScreen(),
    );
  }
}

class imagesScreen extends StatefulWidget {
  const imagesScreen({Key? key}) : super(key: key);

  @override
  State<imagesScreen> createState() => _imagesScreenState();
}

class _imagesScreenState extends State<imagesScreen> {

  final PageController _pageController =
      PageController(viewportFraction: 0.8, keepPage: true);

  List<String> imagesUrl = [
    "https://pbs.twimg.com/media/FqXjJfrWIAEZStv?format=jpg&name=large",
    "https://pbs.twimg.com/media/EY9MbM4XQAAhSoJ?format=jpg&name=large",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBzWzTv9oLcXuakSngUrGYXA6lLDO32cbdPuzKWBZXH6ln4aZij9evSZGm5c0XV5XmMwk&usqp=CAU",
    "https://pbs.twimg.com/media/FqC-v0BXgAcWhqv?format=jpg&name=large",
    "https://www.gtu.edu.tr/Files/etkinlikler/2019/nisan/Poster.jpg",
  ];

  List<String> texts = [
    "Okulumuz Şehir ve Bölge Planlama Bölüm Başkanı Doç. Dr. Tayfun Salihoğlu ile 10 Mart Cuma günü saat 20.30’da 'Kentlerin Depreme Dayanıklılığı' konusuyla YouTube'da canlı yayındayız.longText longText longText longText longText longText longText longText longText longText longText longText longText longText longText ",
        "Okulumuz Şehir ve Bölge Planlama Bölüm Başkanı Doç. Dr. Tayfun Salihoğlu ile 10 Mart Cuma günü saat 20.30’da 'Kentlerin Depreme Dayanıklılığı' konusuyla YouTube'da canlı yayındayız.",
        "Okulumuz Şehir ve Bölge Planlama Bölüm Başkanı Doç. Dr. Tayfun Salihoğlu ile 10 Mart Cuma günü saat 20.30’da 'Kentlerin Depreme Dayanıklılığı' konusuyla YouTube'da canlı yayındayız.",
        "Okulumuz Şehir ve Bölge Planlama Bölüm Başkanı Doç. Dr. Tayfun Salihoğlu ile 10 Mart Cuma günü saat 20.30’da 'Kentlerin Depreme Dayanıklılığı' konusuyla YouTube'da canlı yayındayız.",
        "Okulumuz Şehir ve Bölge Planlama Bölüm Başkanı Doç. Dr. Tayfun Salihoğlu ile 10 Mart Cuma günü saat 20.30’da 'Kentlerin Depreme Dayanıklılığı' konusuyla YouTube'da canlı yayındayız."
  ];
  List<Color> colors =[
    Color(0xffbe1238),
    Color(0xfff5af19),
    Color(0xfff12711),Colors.black,Color(0xfff5af19),
  ];


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: height/30),
          Container(

            height: height / 1.5,
            child: PageView.builder(

              controller: _pageController,
              itemCount: imagesUrl.length,
              itemBuilder: (_, index) => Card(

                //borderOnForeground: true,
                shadowColor: colors[index],
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height / 2.3,
                      margin:  EdgeInsets.all(width/20),
                      decoration: BoxDecoration(
                       // color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage(
                              imagesUrl[index],
                            ),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                    Container(
                      height: height/7,
                      width: width/1.5,
                        child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text("BASLIK" , style: TextStyle(fontWeight: FontWeight.bold)),
                                Text(texts[index] , ),
                              ],
                            ),),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox( height : height/30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SmoothPageIndicator(
                controller: _pageController, // PageController
                count: imagesUrl.length,
                effect:ExpandingDotsEffect(dotColor: Color(0x4000609c),activeDotColor: Color(0xffbe1238),),
                onDotClicked: (index) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
