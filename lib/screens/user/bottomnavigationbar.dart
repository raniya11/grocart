import 'package:flutter/material.dart';
import 'package:grocart/screens/user/homepage.dart';
import 'package:grocart/screens/user/notificationspage.dart';
import 'package:grocart/screens/user/orderspage.dart';
import 'package:grocart/screens/user/profile.dart';


class BottomNavigationBarUser extends StatefulWidget {
  const BottomNavigationBarUser({super.key});

  @override
  State<BottomNavigationBarUser> createState() => _BottomNavigationBarUserState();
}

class _BottomNavigationBarUserState extends State<BottomNavigationBarUser> {
  int selectedindex=0;

  final List<Widget> _list=[
    HomePage(),
    NotificationPage(),
    OrdersPage(),
    ProfilePage()
  ];

  void onItemTapped(int index){
    setState(() {
      selectedindex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _list.elementAt(selectedindex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),
              label: "Notifications"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.article_outlined),
          label: "Orders"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
              label: "Profile"
          ),

        ],
        currentIndex: selectedindex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xff09814a),
        onTap: onItemTapped,

      ),
    );
  }
}