import 'package:flutter/material.dart';
import 'package:project_ui/utills/routes.dart';
import 'package:project_ui/view/screens/cart_page.dart';
import 'package:project_ui/view/screens/home_page.dart';
import 'package:project_ui/view/screens/like_page.dart';
import 'package:project_ui/view/screens/product_detail_page.dart';

void main()
{
  runApp(
    const E_commerceApp(),
  );
}
class E_commerceApp extends StatelessWidget {
  const E_commerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
          GlobalRoutes.home_page : (context) =>  HomePage(),
          GlobalRoutes.detail_page : (context) =>  ProductDetailPage(),
          GlobalRoutes.cart_page : (context) =>  CartPage(),
          GlobalRoutes.like_page : (context) =>  LikePage(),
        },
    );
  }
}

