import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "An Indian Flag",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            shadowColor: Colors.black,
            elevation: 10,
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
          ),
          body: Align(
            child: Container(
              height: 150,
              width: 250,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.orange.shade900,
                    Colors.white,
                    Colors.white,
                    Colors.green.shade500,
                  ],
                  stops: [0.1, 0.4, 0.6, 0.8],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              alignment: Alignment(0, 0.2),
              child: const Text(
                "*",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.blueAccent.shade700,
        ),
      ),
    ),
  );
}
