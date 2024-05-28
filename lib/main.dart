// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_cart/model/items_controller.dart';
import 'package:ecommerce_cart/pages/about_page.dart';
import 'package:ecommerce_cart/pages/cart_page.dart';
import 'package:ecommerce_cart/pages/intro_page.dart';
import 'package:ecommerce_cart/pages/setting_page.dart';
import 'package:ecommerce_cart/pages/shop_page.dart';
import 'package:ecommerce_cart/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ItemController(), child: MyApp()));
}

class ItemsController {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: lightMode,
      routes: {
        "intro_page": (context) => IntroPage(),
        "shop_page": (context) => ShopPage(),
        "cart_page": (context) => CartPage(),
        "about_page": (context) => AboutPage(),
        "setting_page": (context) => SettingPage(),
      },
    );
  }
}
