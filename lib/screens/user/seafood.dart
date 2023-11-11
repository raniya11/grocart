import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Seafoods extends StatefulWidget {
  const Seafoods({super.key});

  @override
  State<Seafoods> createState() => _SeafoodsState();
}

class _SeafoodsState extends State<Seafoods> {
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
                    Text('Seafoods',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.bold),),
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
                                            image: AssetImage('assets/images/seafoods/crab.jpg'),
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
                                      Text('Crab',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹300',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
                                            image: AssetImage('assets/images/seafoods/lobster.jpg'),
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
                                      Text('Lobster',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),softWrap: false,),
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
                                            image: AssetImage('assets/images/seafoods/mussels.jpg'),
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
                                      Text('Mussels',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),softWrap: false,),
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
                                            image: AssetImage('assets/images/seafoods/prawns.jpg'),
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
                                      Text('Prawns',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
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
                                            image: AssetImage('assets/images/seafoods/salmon.jpg'),
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
                                      Text('Salmon',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
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
                                            image: AssetImage('assets/images/seafoods/sardine.jpg'),
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
                                      Text('Sardine',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹150',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
