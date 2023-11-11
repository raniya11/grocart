import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocart/common/registrationpage.dart';
import 'package:grocart/models/usermodel.dart';
import 'package:grocart/screens/user/bottomnavigationbar.dart';
import 'package:grocart/screens/user/homepage.dart';
import 'package:grocart/services/userservices.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final loginKey = GlobalKey<FormState>();
  bool show = true;
  bool loading = false;
  UserServices _userServices=UserServices();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }


  void login() async {
    setState(() {
      loading = true;
    });


    UserModel user = UserModel(
        email: emailController.text,
        password: passwordController.text
    );
    try {
      DocumentSnapshot snap = await _userServices.login(user);
      print(snap['name']);
      if (snap['usertype'] == 'user') {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
            builder: (context) => BottomNavigationBarUser()), (route) => false);
      }
      // else if(snap['usertype']=='admin'){
      // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>AdminHomePage()), (route) => false);
      // }
    }
    catch (e) {
      print(e);
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Form(
              key: loginKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 80.0),
                                child: Image(
                                  image: AssetImage('assets/images/logo.png'),
                                  height: 100,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Login',
                                style: GoogleFonts.roboto(
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      Text(
                        'Email',
                        style: GoogleFonts.roboto(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field is mandatory';
                          }
                          return null;
                        },
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text('Password',style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.w500
                      ),),
                      SizedBox(height: 10,),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty || value.length < 8) {
                            return 'Field is mandatory';
                          }
                          return null;
                        },
                        controller: passwordController,
                        obscureText: show,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                show = !show;
                              });
                            },
                            icon: show == true
                                ? Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.grey,
                            )
                                : Icon(
                              Icons.visibility_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          labelText: 'Password',
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(height: 100,),
                      Center(
                        child: ElevatedButton(
                            onPressed: () {
                              if(loginKey.currentState!.validate()){
                                login();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff09814a)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20),
                              child: Text(
                                'Login',
                                style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: InkWell(
                            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage())),
                            child: RichText(text: TextSpan(
                                text: "Don't have an account? ",style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),
                                children: [TextSpan(
                                    text: "Sign-in",style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff09814a))
                                )]
                            ))
                        ),
                      ),
                      Visibility(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                        visible: loading,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
