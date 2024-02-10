import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "A shadow Button",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.cyan.shade700,
          ),
          body: Align(
            child: Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 5,
                    blurRadius: 10,
                    color: Colors.cyan,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                "Tap",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    ),
  );
}