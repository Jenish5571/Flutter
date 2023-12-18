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
              "Dark Shadow Button",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          body: Align(
            child: Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 5,
                    blurRadius: 10,
                    color: Colors.red,
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Text(
                "Tap",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.black,
        ),
      ),
    ),
  );
}