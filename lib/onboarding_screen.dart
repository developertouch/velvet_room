import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velvet_room/home_screen.dart';
import 'package:velvet_room/main.dart';
class onbarding_screen extends StatefulWidget {
  const onbarding_screen({Key? key}) : super(key: key);

  @override
  State<onbarding_screen> createState() => _onbarding_screenState();
}
class _onbarding_screenState extends State<onbarding_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          height: 900,
          width: double.infinity,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 530,
              width: double.infinity,
              decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //     end: Alignment.topLeft,
              //     begin: Alignment.bottomCenter,
              //     colors: [
              //       Color(0xffF1F1F1).withOpacity(0.97),
              //       Color(0xffFFFFFF).withOpacity(0.05),
              //     ]
              // ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text("VELVET \nROOM",style: GoogleFonts.quando(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 44,
                          color: Colors.black
                        )
                      ),),
                    ),
                    SizedBox(height: 25,),
                    Align(
                      alignment: Alignment.topLeft,
                      child: RichText(text: TextSpan(
                        children: [
                          TextSpan(text: "Transform your bedroom into a \nluxurious velvet feel. \nA new experience in bedroom designs. \nAdd to your room a...",style: GoogleFonts.quattrocento(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            )
                          )),
                          TextSpan(text: "Read more",style: GoogleFonts.quattrocento(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Colors.black,
                            )
                          ))
                        ]
                      )),
                    ),
                    SizedBox(height: 80,),
                    Center(
                      child: Text(" Discover new and \nunique designs now",style: GoogleFonts.quando(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 26,
                          color: Colors.black
                        )
                      ),),
                    ),
                    SizedBox(height: 70,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>home_screen()));

                      },
                      child: Container(
                        height: 55,
                        width: 312,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.shopping_cart,color: Colors.white,size: 20,),
                            SizedBox(width: 5,),
                            Text("Start shopping",style: GoogleFonts.quando(
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
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Color(0xffF1F1F1),
            image: DecorationImage(
              image: AssetImage("images/1.png"),fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.srcATop),
            )
          ),

        ),
      ),
    );
  }
}
