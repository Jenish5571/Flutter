import 'package:flutter/material.dart';
import 'package:marvel_univarse_8_9/uttills/routes.dart';
import 'package:marvel_univarse_8_9/view/screens/home_page.dart';

void main() {
  runApp(
    const Marvel_Univarse(),
  );
}
class Marvel_Univarse extends StatefulWidget {
  const Marvel_Univarse({super.key});

  @override
  State<Marvel_Univarse> createState() => _Marvel_UnivarseState();
}

class _Marvel_UnivarseState extends State<Marvel_Univarse> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        GlobalRoutes.home_page : (context) => HomePage(),
        //GlobalRoutes.detail_page : (context) => DetailPage(),
      },
    );
  }
}

