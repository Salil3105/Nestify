// modules...
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nestify/Pages/Auth%20Pages/login.dart';
import 'package:nestify/Pages/Home%20Pages/bottomBar.dart';
import 'package:nestify/Pages/Home%20Pages/home.dart';

// Pages...

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/bottom-nav-bar', page: () => BottomBar()),
        GetPage(name: '/login', page: () => Login()),
        GetPage(name: '/home', page: () => Home()),
      ],
      initialRoute: '/login',
      home: Scaffold(
        body: BottomBar(),
      ),
    ),
  );
}
