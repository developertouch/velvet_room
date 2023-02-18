import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velvet_room/beds_screen.dart';
import 'package:velvet_room/main.dart';
class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();

}

class _home_screenState extends State<home_screen> {


  TextEditingController  searchController = TextEditingController();
  String search = '';



  // Slider

  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List<String> imgList = [
    "images/14.jpeg",
    "images/15.webp",
    "images/10.jpg",
    "images/11.jpg",


  ];

























  List<String>    _images1=[
    "images/Mirror.png",
    "images/Bedroom.png",
    "images/Headboard.png",
    "images/Mirror.png",
    "images/Headboard.png",
    "images/Bedroom.png",
  ];

  List<String>   _title =[
    "bed 1",
    "bed 2",
    "bed 3",
    "bed 4",
    "bed 5",
    "bed 6",
  ];

  List<String>    _images2=[
    "images/Golden labyrinth.png",
    "images/Hexagonal.png",
    "images/White bed.png",
    "images/Golden labyrinth.png",
    "images/Hexagonal.png",
    "images/White bed.png",
  ];

  List<String>    _images3=[
    "images/Beige.png",
    "images/Luxury.png",
    "images/Wheel mirrors.png",
    "images/Beige.png",
    "images/Luxury.png",
    "images/Wheel mirrors.png",


  ];


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                        child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 90),
                      child: Text("Home",style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                          color: Colors.black,
                        )
                      ),),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                // Padding(
                //   padding: const EdgeInsets.only(right: 20),
                //   child: Row(
                //     // mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       Container(
                //         height: 36,
                //         width: 36,
                //         child: Icon(
                //           Icons.search,color: Color(0xffFFCC48),
                //         ),
                //         decoration: BoxDecoration(
                //           color: Color(0xffFFFFFF),
                //           // color: Colors.red,
                //           borderRadius: BorderRadius.circular(4),
                //         ),
                //       ),
                //       //
                //       SizedBox(width: 20,),
                //       Container(
                //         height: 36,
                //         width: 36,
                //         child: Icon(
                //           Icons.shopping_cart,color: Color(0xffFFCC48),
                //         ),
                //         decoration: BoxDecoration(
                //           color: Color(0xffFFFFFF),
                //           // color: Colors.red,
                //           borderRadius: BorderRadius.circular(4),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: 'Search for anything',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (
                      String? value
                      ){
                    print(value);
                    setState(() {
                      search = value.toString();
                    });
                  },
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Sections",style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    )
                  ),),
                ),
                SizedBox(height: 10,),
                Container(
                  height:100,
                  width: double.infinity,

                  // child: ListView.builder(
                  //   scrollDirection: Axis.horizontal,
                  //   itemCount: 6,
                  //     itemBuilder:(context,index){
                  //    late String Postion = index.toString();
                  //     if(searchController.text.isEmpty){
                  //       return Container(
                  //         margin: EdgeInsets.symmetric(horizontal: 6),
                  //         height: 94,
                  //         width:94 ,
                  //         child: Text(_title[index]+Postion),
                  //         decoration: BoxDecoration(
                  //
                  //             borderRadius: BorderRadius.circular(12),
                  //             image: DecorationImage(
                  //                 image: AssetImage(_images1[index]),fit: BoxFit.cover
                  //             )
                  //         ),
                  //       );
                  //     }else if(
                  //     Postion.toLowerCase().contains(searchController.text.toLowerCase())
                  //     ){
                  //        return Container(
                  //         margin: EdgeInsets.symmetric(horizontal: 6),
                  //         height: 94,
                  //         width:94 ,
                  //         child: Text(_title[index]+Postion),
                  //         decoration: BoxDecoration(
                  //
                  //             borderRadius: BorderRadius.circular(12),
                  //             image: DecorationImage(
                  //                 image: AssetImage(_images1[index]),fit: BoxFit.cover
                  //             )
                  //         ),
                  //       );
                  //     }else(){
                  //       return Text("SORRY!");
                  //     };
                  //
                  //     }
                  //     ),
                ),
                Divider(
                  color: Color(0xffC4C4C4),
                  thickness: 2,
                  endIndent: 10,
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Latest models",style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      color: Colors.black,
                    )
                  ),),
                ),
                SizedBox(height: 10,),
                Container(
                  height:100,
                  width: double.infinity,

                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder:(context,index){
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 6),
                          height: 94,
                          width:94 ,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage(_images2[index]),fit: BoxFit.cover
                              )
                          ),
                        );
                      }
                  ),
                ),
                Divider(
                  color: Color(0xffC4C4C4),
                  thickness: 2,
                  endIndent: 10,
                ),
                SizedBox(height: 10,),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text("Best seller",style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.black,
                      )
                  ),),
                ),
                SizedBox(height: 10,),
                Container(
                  height:100,
                  width: double.infinity,

                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder:(context,index){
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 6),
                          height: 94,
                          width:94 ,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage(_images3[index]),fit: BoxFit.cover
                              )
                          ),
                        );
                      }
                  ),
                ),
                Divider(
                  color: Color(0xffC4C4C4),
                  thickness: 2,
                  endIndent: 10,
                ),
                SizedBox(height: 5,),
                Center(
                  child: Text("Stay tuned for new",style: GoogleFonts.raleway(
                    textStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )
                  ),),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>beds_screen()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlayAnimationDuration: Duration(seconds: 1),
                        autoPlayInterval: Duration(seconds: 2),
                        viewportFraction: 1,
                        height: 150,
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
                                  Image.asset(item, fit: BoxFit.cover, width: 1000.0),
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 40,
                        height: 3.0,
                        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                                .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                      ),
                    );
                  }).toList(),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
