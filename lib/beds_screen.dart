import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velvet_room/cart_screen.dart';
class beds_screen extends StatefulWidget {
  const beds_screen({Key? key}) : super(key: key);

  @override
  State<beds_screen> createState() => _beds_screenState();
}
bool  _iconBool = false;

IconData  _iconLight = Icons.wb_sunny;
IconData  _iconDark = Icons.nights_stay;
ThemeData  _lightTheme = ThemeData(
    primarySwatch: Colors.amber,
    brightness: Brightness.light
);
ThemeData   _darkTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
);




class _beds_screenState extends State<beds_screen> {

  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> imgList = [
    "images/bed2.jpg",
    "images/15.webp",
    "images/10.jpg",
    "images/14.jpeg",


  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: Text("Black bed",style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                          color: Colors.black,
                        )
                    ),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlayAnimationDuration: Duration(seconds: 1),
                autoPlayInterval: Duration(seconds: 2),
                viewportFraction: 1,
                height: 350,
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                onPageChanged: (index, carouselReason) {
                  print(index);
                  setState(() {
                    _current=index;
                  });
                }
            ),
            items: imgList
                .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.asset(item, fit: BoxFit.cover, width: 1000.0,height: 350,),
                        // Positioned(
                        //   bottom: 0.0,
                        //   left: 0.0,
                        //   right: 0.0,
                        //   child: Container(
                        //     decoration: BoxDecoration(
                        //       gradient: LinearGradient(
                        //         colors: [
                        //           Color.fromARGB(200, 0, 0, 0),
                        //           Color.fromARGB(0, 0, 0, 0)
                        //         ],
                        //         begin: Alignment.bottomCenter,
                        //         end: Alignment.topCenter,
                        //       ),
                        //     ),
                        //     padding: EdgeInsets.symmetric(
                        //         vertical: 10.0, horizontal: 20.0),
                        //   ),
                        // ),
                      ],
                    )),
              ),
            ))
                .toList(),
          ),
        ),
            Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 12,
              height: 12,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black)
                      .withOpacity(_current == entry.key ? 0.9 : 0.3)
              ),
            ),
          );
        }).toList(),
      ),
            SizedBox(height: 30,),
            Expanded(
              child:Container(
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("  Black bed",style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              color: Colors.black
                            )
                          ),),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.red,
                            child: Icon(Icons.heart_broken,color: Colors.white,size: 12,),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("       2x2",style: GoogleFonts.philosopher(
                        textStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff757575)
                        )
                      ),),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 31,
                            width: 100,
                            child:Center(
                              // child: RichText(text: TextSpan(
                              //
                              //   children: [
                              //     TextSpan(text: "-   ",style: TextStyle(
                              //       fontSize: 25,
                              //       color: Color(0xffC7C7C7)
                              //     )),
                              //     TextSpan(text: "1    ",style: TextStyle(
                              //       fontSize: 12,
                              //       color: Colors.black,
                              //     )),
                              //     TextSpan(text: "+",style: TextStyle(
                              //       fontWeight: FontWeight.bold,
                              //       color: Colors.black
                              //     )),
                              //   ]
                              // )),
                              child: Text("-     1     +",style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            decoration:   BoxDecoration(
                              border: Border.all(color: Color(0xffC4C4C4),width: 2),
                              borderRadius: BorderRadius.circular(12),

                            ),
                          ),
                          Spacer(),
                          Text("\$456.99",style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20
                          ),),
                        ],
                      ),

                    ),
                    SizedBox(height: 30,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>cart_screen()));

                      },
                      child: Container(
                        height: 55,
                        width: 312,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shopping_cart,color: Colors.white,size: 20,),
                            SizedBox(width: 5,),
                            Text("Add to cart",style: GoogleFonts.quando(
                                textStyle: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white
                                )
                            ),)
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xffFFCC48)
                        ),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                  color: Color(0xffFFFFFF)
                ),
              )
            ),


      ],
        ),
      ),
    );
  }
}
