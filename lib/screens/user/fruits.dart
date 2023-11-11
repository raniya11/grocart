import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Fruits extends StatefulWidget {
  const Fruits({super.key});

  @override
  State<Fruits> createState() => _FruitsState();
}

class _FruitsState extends State<Fruits> {
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
                    Text('Fruits',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.bold),),
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
                                            image: AssetImage('assets/images/fruits/apple.jpeg'),
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
                                      Text('Apple',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹50',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
                                            image: AssetImage('assets/images/fruits/avocado.jpeg'),
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
                                      Text('Avocado',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹100',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
                                            image: AssetImage('assets/images/fruits/banana.jpeg'),
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
                                      Text('Banana',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹50',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
                                            image: AssetImage('assets/images/fruits/cherry.jpeg'),
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
                                      Text('Cherry',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹55',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
                                            image: AssetImage('assets/images/fruits/grapes.jpeg'),
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
                                      Text('Grapes',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹50',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
                                            image: AssetImage('assets/images/fruits/mango.jpeg'),
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
                                      Text('Mango',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹100',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
                                            image: AssetImage('assets/images/fruits/orange.jpeg'),
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
                                      Text('Orange',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹50',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
                                            image: AssetImage('assets/images/fruits/pappaya.jpeg'),
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
                                      Text('Pappaya',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('1kg ₹70',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
