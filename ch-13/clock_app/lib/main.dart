import 'package:clock_app/utills/routes.dart';
import 'package:clock_app/view/screens/home_page.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    const ClockApp(),
  );
}

class ClockApp extends StatelessWidget {
  const ClockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        Routes.home_page : (context) => const HomePage(),
      },
    );
  }
}
