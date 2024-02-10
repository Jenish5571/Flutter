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
              "Watch",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            shadowColor: Colors.black,
            elevation: 10,
            backgroundColor: Color(0xff392467),
          ),
          body: Align(
            child: Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff7C93C3),
                    Color(0xff435585)
                  ],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              alignment: Alignment.center,
              child: Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          backgroundColor: Color(0xff392467),
        ),
      ),
    ),
  );
}