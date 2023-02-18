import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class cart_screen extends StatelessWidget {
  const cart_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
                      Text("Cart",style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 28,
                            color: Colors.black,
                          )
                      ),),
                      Container(
                        height: 36,
                        width: 36,
                        child: Icon(
                          Icons.shopping_cart,color: Color(0xffFFCC48),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                  child:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 91,
                          width: 91,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage("images/bed and storage.png"),fit: BoxFit.cover
                            )
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0,left: 10),
                              child: Text("Bed \& storage",style: GoogleFonts.raleway(
                                textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                )
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 63.0),
                              child: Text("2x2",style: GoogleFonts.philosopher(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff757575),
                                  fontSize: 11
                                )
                              ),),
                            ),
                            SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.only(right: 40.0),
                              child: Text("\$799.99",style: GoogleFonts.philosopher(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12
                                )
                              ),),
                            )
                          ],
                        ),
                        SizedBox(width: 50,),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0,),
                          child: Container(
                            height: 21,
                            width: 68,
                            child:Center(
                              child: Text("-     1     +",style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                            decoration:   BoxDecoration(
                              border: Border.all(color: Color(0xffC4C4C4),width: 2),
                              borderRadius: BorderRadius.circular(12),

                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                  child:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 91,
                          width: 91,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage("images/Wooden bed.png"),fit: BoxFit.cover
                              )
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0,left: 10),
                              child: Text("Wooden bed",style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  )
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 47.0),
                              child: Text("1,60x2",style: GoogleFonts.philosopher(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff757575),
                                      fontSize: 11
                                  )
                              ),),
                            ),
                            SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.only(right: 40.0),
                              child: Text("\$459.99",style: GoogleFonts.philosopher(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12
                                  )
                              ),),
                            )
                          ],
                        ),
                        SizedBox(width: 50,),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Container(
                            height: 21,
                            width: 68,
                            child:Center(
                              child: Text("-     1     +",style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                            decoration:   BoxDecoration(
                              border: Border.all(color: Color(0xffC4C4C4),width: 2),
                              borderRadius: BorderRadius.circular(12),

                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                  child:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 91,
                          width: 91,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage("images/Velvet bed.png"),fit: BoxFit.cover
                              )
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0,left: 10),
                              child: Text("Velvet bed",style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  )
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0),
                              child: Text("1,80,2",style: GoogleFonts.philosopher(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff757575),
                                      fontSize: 11
                                  )
                              ),),
                            ),
                            SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Text("\$639.99",style: GoogleFonts.philosopher(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12
                                  )
                              ),),
                            )
                          ],
                        ),
                        SizedBox(width: 70,),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Container(
                            height: 21,
                            width: 68,
                            child:Center(
                              child: Text("-     1     +",style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                            decoration:   BoxDecoration(
                              border: Border.all(color: Color(0xffC4C4C4),width: 2),
                              borderRadius: BorderRadius.circular(12),

                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                  child:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 91,
                          width: 91,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage("images/black bed.png"),fit: BoxFit.cover
                              )
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0,left: 10),
                              child: Text("Black bed",style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  )
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 40.0),
                              child: Text("2x2",style: GoogleFonts.philosopher(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff757575),
                                      fontSize: 11
                                  )
                              ),),
                            ),
                            SizedBox(height: 30,),
                            Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: Text("\$456.99",style: GoogleFonts.philosopher(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12
                                  )
                              ),),
                            )
                          ],
                        ),
                        SizedBox(width: 70,),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Container(
                            height: 21,
                            width: 68,
                            child:Center(
                              child: Text("-     1     +",style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),),
                            ),
                            decoration:   BoxDecoration(
                              border: Border.all(color: Color(0xffC4C4C4),width: 2),
                              borderRadius: BorderRadius.circular(12),

                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xffFFFFFF),
                  ),
                ),
                SizedBox(height: 60,),
                Container(
                  height: 199,
                  width: 390,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Total before discount (4 Items):",style: GoogleFonts.readexPro(
                              textStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              )
                            ),),
                            Spacer(),
                            Text("\$2356.04",style: GoogleFonts.philosopher(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16
                              )
                            ),)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("Discount",style: GoogleFonts.readexPro(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                )
                            ),),
                            Spacer(),
                            Text("\$56.00",style: GoogleFonts.philosopher(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16
                                )
                            ),)
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text("Final total",style: GoogleFonts.readexPro(
                                textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                )
                            ),),
                            Spacer(),
                            Text("\$2300.00",style: GoogleFonts.philosopher(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16
                                )
                            ),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(
                          height: 55,
                          width: 312,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Proceed to checkout",style: GoogleFonts.quando(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white
                                  )
                              ),),
                              SizedBox(width: 5,),
                              Icon(Icons.arrow_forward,color: Colors.white,size: 20,),

                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Color(0xffFFCC48)
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
                  ),

                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
