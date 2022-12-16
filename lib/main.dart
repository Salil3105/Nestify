// modules...
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nestify/Pages/Auth%20Pages/login.dart';
import 'package:nestify/Pages/Home%20Pages/bottomBar.dart';
import 'package:nestify/Pages/Home%20Pages/googleBottomNavBar.dart';
import 'package:nestify/Pages/Home%20Pages/home.dart';
import 'package:nestify/Pages/OnBoarding%20Pages/onBoardingScreen.dart';

// Pages...

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/bottom-nav-bar', page: () => GNavBar()),
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: '/home1', page: () => Home()),
        GetPage(name: '/introduction_pages', page: () => onBoardingScreen())
      ],
      initialRoute: '/introduction_pages',
      home: Scaffold(
        body: BottomBar(),
      ),
    ),
  );
}
