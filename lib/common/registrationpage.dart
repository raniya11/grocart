import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocart/common/loginpage.dart';
import 'package:grocart/models/usermodel.dart';
import 'package:grocart/services/userservices.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  bool show = true;
  bool show2 = true;
  final loginKey = GlobalKey<FormState>();
  UserServices _userServices=UserServices();
  bool loading=false;

  void dispose() {
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
    super.dispose();
  }

  void register() async{
    setState(() {
      loading=true;
    });
    UserModel user=UserModel(
      name: nameController.text,
      email: emailController.text,
      password: passwordController.text,
      status: true,
      usertype: 'user',
      createdAt: DateTime.now()
    );
    try{
      await _userServices.RegisterUser(user).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage())));
    }
    catch(e){
      print(e);
      setState(() {
        loading=false;
      });
      List err=e.toString().split(']');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(err[1].toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
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
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Image(
                                  image: AssetImage('assets/images/logo.png'),
                                  height: 100,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Register',
                                style: GoogleFonts.roboto(
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text(
                        'Email',
                        style: GoogleFonts.roboto(
                          fontSize: 22,
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
                      Text(
                        'Name',
                        style: GoogleFonts.roboto(
                        fontSize: 22,
    fontWeight: FontWeight.w500,
    ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Field is mandatory';
                          }
                          return null;
                        },
                        controller: nameController,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Colors.grey),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Password',
                          style: GoogleFonts.roboto(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Confirm Password',
                        style: GoogleFonts.roboto(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty || value.length < 8) {
                            return 'Field is mandatory';
                          }
                          return null;
                        },
                        controller: confirmpasswordController,
                        obscureText: show2,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                show2 = !show2;
                              });
                            },
                            icon: show2 == true
                                ? Icon(
                              Icons.visibility_off_outlined,
                              color: Colors.grey,
                            )
                                : Icon(
                              Icons.visibility_outlined,
                              color: Colors.grey,
                            ),
                          ),
                          labelText: 'Confirm Password',
                          hintText: 'Confirm Password',
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
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () {
                              if(passwordController.text==confirmpasswordController.text){
                                if(loginKey.currentState!.validate()){
                                  register();
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff09814a)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20),
                              child: Text(
                                'Register',
                                style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            )),
                      ),
    SizedBox(height: 20,),
    Center(
      child: InkWell(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage())),
      child: RichText(text: TextSpan(
      text: "Already have an account!? ",style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),
      children: [TextSpan(
      text: "Sign in",style: GoogleFonts.roboto(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff09814a))
      )]
      ))
      ),
    )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]
      ),
    );
  }
}
