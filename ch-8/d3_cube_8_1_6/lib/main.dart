import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "3D Cube",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            centerTitle: true,
            backgroundColor: Color(0xff009688),
          ),
          body: Align(
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 6,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff009688),
                  border: Border.symmetric(
                    vertical: BorderSide(
                      color : Color(0xff35A29F),
                      width: 35,
                    ),
                    horizontal: BorderSide(
                      color: Color(0xff52D7CA),
                      width: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
