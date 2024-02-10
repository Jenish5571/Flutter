import 'package:flutter/material.dart';

void main()
{
  String name="Flutter app";

  Color appBarColor = Colors.lime;
  Color textColor = Colors.red;
  Color bgColor = Colors.black;

  double sizeFont = 35;

  TextStyle textStyle = const TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.bold,
      letterSpacing: 10,
      decoration: TextDecoration.underline,
      decorationColor: Colors.lime);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
            title: const Text("Flutter app"),
            centerTitle : true,
            elevation:0,
          ),
          body: const Center(
            child: Text(
              "Red & White",
              ),
            ),
          ),
        ),
      ),
  );
}
