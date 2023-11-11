import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DairyProducts extends StatefulWidget {
  const DairyProducts({super.key});

  @override
  State<DairyProducts> createState() => _DairyProductsState();
}

class _DairyProductsState extends State<DairyProducts> {
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
                    Text('Dairy Products',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.bold),),
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
                                            image: AssetImage('assets/images/dairy/butter.jpeg'),
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
                                      Text('Butter',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('500gm ₹50',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
                                            image: AssetImage('assets/images/dairy/cheese.jpeg'),
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
                                      Text('Cheese',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),softWrap: false,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('500gm ₹75',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
                                            image: AssetImage('assets/images/dairy/curd.jpeg'),
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
                                      Text('Curd',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),softWrap: false,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('250ml ₹40',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
                                            image: AssetImage('assets/images/dairy/freshcream.jpeg'),
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
                                      Text('Fresh Cream',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('250ml ₹100',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
                                            image: AssetImage('assets/images/dairy/icecream.jpeg'),
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
                                      Text('Ice Cream',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('500gm ₹150',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
                                            image: AssetImage('assets/images/dairy/milk.jpeg'),
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
                                      Text('Milk',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('500ml ₹30',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
