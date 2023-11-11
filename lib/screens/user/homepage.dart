import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocart/common/loginpage.dart';
import 'package:grocart/screens/user/dairy.dart';
import 'package:grocart/screens/user/desserts.dart';
import 'package:grocart/screens/user/detailspage.dart';
import 'package:grocart/screens/user/fruits.dart';
import 'package:grocart/screens/user/meats.dart';
import 'package:grocart/screens/user/seafood.dart';
import 'package:grocart/screens/user/vegetables.dart';
import 'package:grocart/services/userservices.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UserServices userServices=UserServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade200,
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(image: AssetImage('assets/images/person.jpg'),fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text('Amelia',style: GoogleFonts.roboto(fontSize: 26,fontWeight: FontWeight.w700),),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: IconButton(onPressed: (){
                        userServices.LogOut();
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                      },icon: Icon(Icons.login_outlined,color: Colors.grey,),
                      )
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 240,
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
                            Text('Search category',style: GoogleFonts.roboto(
                              fontSize: 18,
                              color: Colors.grey
                            ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.notifications,color: Colors.grey,),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.shopping_cart,color: Colors.grey,),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 340,
                        decoration: BoxDecoration(
                          color: Color(0xff09814a),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/offer1.jpg'),fit: BoxFit.fill
                                  )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Text('Special Offers!',style: GoogleFonts.roboto(fontSize: 20,
                                      fontWeight: FontWeight.w600,color: Colors.white
                                  ),),
                                  Text('Get 25% Off',style: GoogleFonts.roboto(fontSize: 26,
                                    fontWeight: FontWeight.w600,color: Colors.white,
                                  ),),
                                  Text('on vegetables',style: GoogleFonts.roboto(fontSize: 20,
                                    fontWeight: FontWeight.w600,color: Colors.white,
                                  ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 200,
                        width: 340,
                        decoration: BoxDecoration(
                          color: Color(0xff09814a),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/offer1.jpg'),fit: BoxFit.fill
                                  )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Text('Special Offers!',style: GoogleFonts.roboto(fontSize: 20,
                                      fontWeight: FontWeight.w600,color: Colors.white
                                  ),),
                                  Text('Get 25% Off',style: GoogleFonts.roboto(fontSize: 26,
                                    fontWeight: FontWeight.w600,color: Colors.white,
                                  ),),
                                  Text('on vegetables',style: GoogleFonts.roboto(fontSize: 20,
                                    fontWeight: FontWeight.w600,color: Colors.white,
                                  ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 200,
                        width: 340,
                        decoration: BoxDecoration(
                          color: Color(0xff09814a),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/offer1.jpg'),fit: BoxFit.fill
                                )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Text('Special Offers!',style: GoogleFonts.roboto(fontSize: 20,
                                  fontWeight: FontWeight.w600,color: Colors.white
                                  ),),
                                  Text('Get 25% Off',style: GoogleFonts.roboto(fontSize: 26,
                                      fontWeight: FontWeight.w600,color: Colors.white,
                                  ),),
                                  Text('on vegetables',style: GoogleFonts.roboto(fontSize: 20,
                                    fontWeight: FontWeight.w600,color: Colors.white,
                                  ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text('Categories',style: GoogleFonts.roboto(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(width: 160,),
                    Text('see all',style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xff09814a)
                    ),)
                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>Vegetables())),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/vegetables.jpg'),
                                  fit: BoxFit.cover
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          Text('Veggies',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w600),),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Fruits())),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/fruits.jpg'),
                                    fit: BoxFit.cover
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          Text('Fruits',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w600),),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Desserts())),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/desserts.jpg'),
                                    fit: BoxFit.cover
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          Text('Desserts',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w600),),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Meats())),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/Meat.jpeg'),
                                    fit: BoxFit.cover
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          Text('Meats',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w600),),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Seafoods())),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/seafoods.jpg'),
                                    fit: BoxFit.cover
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          Text('Seafoods',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w600),),
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [
                          InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>DairyProducts())),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/dairy.jpg'),
                                    fit: BoxFit.fill
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                          Text('Dairy',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w600),),
                        ],
                      ),
                      SizedBox(width: 10,),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text('Best Selling',style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),),
                    SizedBox(width: 150,),
                    Text('see all',style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color(0xff09814a)
                    ),)
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsPage())),
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
                                          image: AssetImage('assets/images/vegetables/tomato.jpeg'),
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
                                    Text('Tomato',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('1kg ₹25',style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xff09814a)),),
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
                              padding: const EdgeInsets.only(top: 8.0,),
                              child: Container(
                                height: 120,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black,
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/beef.jpg'),
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
                                  Text('Beef',style: GoogleFonts.roboto(fontSize: 22,fontWeight: FontWeight.w600),),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
