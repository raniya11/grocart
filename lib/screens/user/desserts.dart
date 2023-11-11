import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Desserts extends StatefulWidget {
  const Desserts({super.key});

  @override
  State<Desserts> createState() => _DessertsState();
}

class _DessertsState extends State<Desserts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            color: Colors.grey.shade200,
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Desserts',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.search,color: Colors.grey,),
                            SizedBox(width: 20,),
                            Text('Search item',style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: Colors.grey
                            ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 210,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,left: 14),
                                  child: Container(
                                    height: 120,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/desserts/cake.jpeg'),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Cake',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹500',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
                                          CircleAvatar(
                                            backgroundColor: Color(0xff09814a),
                                            radius: 15,
                                            child: Icon(Icons.add,color: Colors.white,),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Container(
                            height: 210,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,left: 14),
                                  child: Container(
                                    height: 120,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/desserts/chocolate brownie.jpeg'),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Chocolate Brownie',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),softWrap: false,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹450',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
                                          CircleAvatar(
                                            backgroundColor: Color(0xff09814a),
                                            radius: 15,
                                            child: Icon(Icons.add,color: Colors.white,),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 210,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,left: 14),
                                  child: Container(
                                    height: 120,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/desserts/chocolate icepop.jpeg'),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Chocolate Icepop',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),softWrap: false,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1pc ₹20',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
                                          CircleAvatar(
                                            backgroundColor: Color(0xff09814a),
                                            radius: 15,
                                            child: Icon(Icons.add,color: Colors.white,),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Container(
                            height: 210,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,left: 14),
                                  child: Container(
                                    height: 120,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/desserts/cookies.jpeg'),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Cookies',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹250',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
                                          CircleAvatar(
                                            backgroundColor: Color(0xff09814a),
                                            radius: 15,
                                            child: Icon(Icons.add,color: Colors.white,),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 210,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,left: 14),
                                  child: Container(
                                    height: 120,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/desserts/donuts.jpeg'),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Donuts',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹350',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
                                          CircleAvatar(
                                            backgroundColor: Color(0xff09814a),
                                            radius: 15,
                                            child: Icon(Icons.add,color: Colors.white,),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Container(
                            height: 210,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,left: 14),
                                  child: Container(
                                    height: 120,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/desserts/macarons.jpeg'),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Macarons',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹400',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
                                          CircleAvatar(
                                            backgroundColor: Color(0xff09814a),
                                            radius: 15,
                                            child: Icon(Icons.add,color: Colors.white,),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 210,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,left: 14),
                                  child: Container(
                                    height: 120,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/desserts/muffins.jpeg'),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Muffins',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹350',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
                                          CircleAvatar(
                                            backgroundColor: Color(0xff09814a),
                                            radius: 15,
                                            child: Icon(Icons.add,color: Colors.white,),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Container(
                            height: 210,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0,left: 14),
                                  child: Container(
                                    height: 120,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/desserts/oreo shake.jpeg'),
                                            fit: BoxFit.cover
                                        )
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Oreo Shake',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1l ₹170',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
                                          CircleAvatar(
                                            backgroundColor: Color(0xff09814a),
                                            radius: 15,
                                            child: Icon(Icons.add,color: Colors.white,),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
