import 'package:flutter/material.dart';
import 'package:grocart/common/loginpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(GroCart());

}

class GroCart extends StatelessWidget {
  const GroCart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
