import 'package:flutter/material.dart';
import 'package:mnc_ceo_8_8/utills/routes.dart';
import 'package:mnc_ceo_8_8/view/screens/detail_page.dart';
import 'package:mnc_ceo_8_8/view/screens/home_page.dart';

void main() {
  runApp(
    const CeoApp(),
  );
}

class CeoApp extends StatefulWidget {
  const CeoApp({super.key});

  @override
  State<CeoApp> createState() => _CeoAppState();
}

class _CeoAppState extends State<CeoApp> {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          GlobalRoutes.home_page : (context) => HomePage(),
          GlobalRoutes.detail_page : (context) => DetailPage(),
        },
      );
  }
}
