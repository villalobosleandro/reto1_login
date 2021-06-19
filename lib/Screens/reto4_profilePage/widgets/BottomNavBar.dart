import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kBottomNavigationBarHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.home,
            color: Color(0xff5563FF),
            size: 30,
          ),
          Icon(
            Icons.search,
            color: Colors.grey,
            size: 30,
          ),
          Icon(
            Icons.notifications,
            color: Colors.grey,
            size: 30,
          ),
          Icon(
            Icons.person,
            color: Colors.grey,
            size: 30,
          ),
        ],
      ),
    );
  }
}
