import 'package:flutter/material.dart';
import 'package:resume_app/utills/routes.dart';
import 'package:resume_app/view/screens/home_page.dart';
import 'package:resume_app/view/screens/splash_screen.dart';

void main()
{
  const ResumeApp();
}

class ResumeApp extends StatelessWidget {
  const ResumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.home_page : (context) => const HomePage(),
        Routes.splash_screen : (context) => const splash_screen(),
      },
    );
  }
}
