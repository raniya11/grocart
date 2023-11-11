import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey
                ),
              ),
              Column(
                children: [
                  Text("Tomato"),
                  SizedBox(height: 20,),
                  Text("1kg ₹25"),
                  SizedBox(height: 20,),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
