import 'package:flutter/material.dart';

import 'package:reto1_login/Screens/reto4_profilePage/widgets/TopInformation.dart';
import 'package:reto1_login/Screens/reto4_profilePage/widgets/MidInformation.dart';
import 'package:reto1_login/Screens/reto4_profilePage/widgets/BottomInformation.dart';
import 'package:reto1_login/Screens/reto4_profilePage/widgets/BottomNavBar.dart';

class ProfileScreen extends StatefulWidget {

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              TopInformation(),
              MidInformation(),
              SizedBox(height: 10.0,),
              Divider(
                thickness: 5,
              ),
              SizedBox(height: 10.0,),
              BottomInformation(),
              SizedBox(height: 20.0,)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
      floatingActionButton: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 6),
                blurRadius: 10)
          ],
        ),
        child: FloatingActionButton(
          backgroundColor: Color(0xff5563FF),
          onPressed: (){},
          child: Icon(Icons.add, size: 30,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
