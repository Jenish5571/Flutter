import 'dart:async';

import 'package:festival_app/headers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SplashScreen> {
  bool isAnimated = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        isAnimated = false;
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 9),
      () {
        Navigator.of(context).pushReplacementNamed(AppRoutes.instance.homePage);
      },
    );

    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(seconds: 5),
          transitionBuilder: (child, animation) {
            return ScaleTransition(scale: animation, child: child);
          },
          child: Image(
            key: UniqueKey(),
            image: const AssetImage(
              "assets/images/splash_screen/splash.png",
            ),
          ),
        ),
      ),
    );
  }
}

/*
import 'dart:async';

import 'package:flutter/material.dart';

import '../../utills/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isAnimated = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        isAnimated = false;
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 6),
      () {
        Navigator.of(context).pushReplacementNamed(Routes.languagePage);
      },
    );
    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(
          duration: Duration(seconds: 5),
          transitionBuilder: (child, animation) {
            return ScaleTransition(scale: animation, child: child);
          },
          child: (isAnimated)
              ? Image(
                  key: UniqueKey(),
                  image: NetworkImage(
                      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.b12.io%2Fresource-center%2Fwebsite-conversion%2Fwhat-is-a-splash-screen-and-how-can-it-help-your-brand.html&psig=AOvVaw3pGw6IzR1U-m-lxw1FMNSb&ust=1711623364129000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNilyYaklIUDFQAAAAAdAAAAABAE"),
                  height: 200,
                )
              : Image(
                  key: UniqueKey(),
                  image: NetworkImage(
                      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fdribbble.com%2Fshots%2F6333272-Camera&psig=AOvVaw3zUv2bx6NHTK-ee2KHh7-R&ust=1711623929632000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPjchZSmlIUDFQAAAAAdAAAAABAE"),
                  height: 200,
                ),
        ),
      ),
    );

 */
