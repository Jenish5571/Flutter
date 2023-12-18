import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "My App",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            shadowColor: Colors.black87,
            centerTitle: true,
            elevation: 5,
            backgroundColor: Colors.green.shade600,
          ),
          body: Align(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.green.shade900,
              ),
              alignment: Alignment.center,
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.lightGreen.shade500,
                ),
                alignment: const Alignment(0,0),
                child: const Text(
                  "oooo",
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 150,
                    fontWeight: FontWeight.normal,
                    letterSpacing: -45,
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.green.shade600,
        ),
      ),
    ),
  );
}