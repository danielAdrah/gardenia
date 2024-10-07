import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gardenia/models/plants.dart';
import 'package:gardenia/theme.dart';
import 'package:gardenia/view/userview/InYourHandScreen.dart';
import 'package:gardenia/view/userview/homeUser.dart';
import 'package:gardenia/view/userview/profile_user_screen.dart';

class BottomNavBarUser extends StatefulWidget {
  const BottomNavBarUser({Key? key}) : super(key: key);

  @override
  State<BottomNavBarUser> createState() => _BottomNavBarUserState();
}

class _BottomNavBarUserState extends State<BottomNavBarUser> {
  int _bottomNavIndex = 0;

  //List of the pages
  List<Widget> _widgetOptions() {
    return [
      const Homeuser(),
      const Inyourhandscreen(),
      const ProfileUserScreen(),
    ];
  }

  //List of the pages icons
  List<IconData> iconList = [
    Icons.home,
    Icons.back_hand,
    Icons.person,
  ];

  //List of the pages titles
  List<String> titleList = [
    'Home',
    'In Your Hand',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ThemeColor.background,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              titleList[_bottomNavIndex],
              style: TextStyle(
                color: ThemeColor.blackColor,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
          ],
        ),
        backgroundColor: ThemeColor.background,
        elevation: 0.0,
      ),
      body: IndexedStack(
        index: _bottomNavIndex,
        children: _widgetOptions(),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
          splashColor: ThemeColor.primary,
          activeColor: ThemeColor.primary,
          inactiveColor: Colors.black.withOpacity(.5),
          icons: iconList,
          notchMargin: 33,
          gapWidth: 10,
          iconSize: 35,
          activeIndex: _bottomNavIndex,
          notchSmoothness: NotchSmoothness.softEdge,
          onTap: (index) {
            setState(() {
              _bottomNavIndex = index;
            });
          }),
    );
  }
}
