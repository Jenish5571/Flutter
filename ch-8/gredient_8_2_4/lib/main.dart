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
              "Gredient Button",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            shadowColor: Colors.black87,
            elevation: 10,
            centerTitle: true,
            backgroundColor: Color(0xff392467),
          ),
          body: Align(
            child: Container(
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.white
                ),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffC21292),
                    Color(0xff711DB0),
                    Color(0xff5FBDFF),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Flutter",
                style: TextStyle(
                  fontSize: 24,
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