// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gardenia/view/auth/User_register_screen.dart';
import 'package:gardenia/view/auth/login_Screen.dart';
import 'package:gardenia/view/auth/selectAccountScreen.dart';
import 'package:gardenia/view/auth/store_register_screen.dart';
import 'package:gardenia/view/userview/bottomNavUser.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'view/storeview/bottom_nav_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavStore(),
      // BottomNavBarUser(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/userRegister', page: () => UserRegisterScreen()),
        GetPage(name: '/storeRegister', page: () => StoreRegisterScreen()),
        GetPage(name: '/BottomNavBarUser', page: () => BottomNavBarUser()),
        // Add other pages here
      ],
    );
  }
}
