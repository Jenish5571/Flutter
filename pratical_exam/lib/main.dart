import 'package:flutter/material.dart';
import 'package:pratical_exam/utills/routes.dart';
import 'package:pratical_exam/view/screens/cart_page.dart';
import 'package:pratical_exam/view/screens/detail_page.dart';
import 'package:pratical_exam/view/screens/home_page.dart';

void main()
{
  runApp(
    const MyApp(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        GlobalRoutes.home_page : (context) =>  HomePage(),
        GlobalRoutes.detail_page : (context) =>  ProductDetailPage(),
        GlobalRoutes.cart_page : (context) =>  CartPage(),
      },
    );
  }
}
