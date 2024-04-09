import 'dart:async';
import 'package:flutter/material.dart';
import 'package:resume_app/utills/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.of(context).pushReplacementNamed(Routes.home_page);
      },
    );

    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Container(
      alignment: Alignment.center,
      color: Color(0xff11009E),
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Image.asset(
            "assets/images/splash_screens/splash_image.png",
            height: h * 0.28,
          ),
          Spacer(),
          LinearProgressIndicator(
            minHeight: 5,
            color: Colors.indigo,
          ),
        ],
      ),
    );
  }
}
