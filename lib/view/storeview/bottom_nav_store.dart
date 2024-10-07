// ignore_for_file: prefer_const_constructors

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gardenia/theme.dart';
import 'package:get/get.dart';
import 'add_plant.dart';
import 'profile_Store.dart';
import 'request_view.dart';
import 'store_products.dart';

class BottomNavStore extends StatefulWidget {
  const BottomNavStore({Key? key}) : super(key: key);

  @override
  State<BottomNavStore> createState() => _BottomNavStoreState();
}

class _BottomNavStoreState extends State<BottomNavStore> {
  int _bottomNavIndex = 0;

  //List of the pages
  List<Widget> _widgetOptions() {
    return [
      const StoreProducts(),
      const RequestView(),
      const ProfileStore(),
    ];
  }

  //List of the pages icons
  List<IconData> iconList = [
    CupertinoIcons.square_stack_3d_up_fill,
    Icons.task,
    Icons.person,
  ];

  //List of the pages titles
  List<String> titleList = [
    'Products',
    'Requests',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ThemeColor.background,
        title: Row(
          mainAxisAlignment: _bottomNavIndex == 0
              ? MainAxisAlignment.spaceBetween
              : MainAxisAlignment.start,
          children: [
            Text(
              titleList[_bottomNavIndex],
              style: TextStyle(
                color: ThemeColor.blackColor,
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            _bottomNavIndex == 0
                ? IconButton(
                    onPressed: () {
                      //add new plant screen
                      Get.to(AddPlant());
                    },
                    icon: Icon(Icons.add),
                    color: ThemeColor.blackColor,
                    iconSize: 40,
                  )
                : Icon(Icons.remove)
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
          gapWidth: 10,
          notchMargin: 33,
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
