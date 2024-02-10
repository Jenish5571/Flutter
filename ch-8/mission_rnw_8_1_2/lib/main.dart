import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Mission Of RNW",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            shadowColor: Colors.black87,
            backgroundColor: Colors.red.shade500,
          ),
          body: Align(
            child: Container(
              width: 280,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.redAccent.shade100,
                border: Border(
                  left: BorderSide(
                    color: Colors.red,
                    width: 20,
                  ),
                ),
              ),
              child: const Center(
                child:  Text(
                  "  Shaping ""skills for ""scaling higher"
                " -RNW",
                style: TextStyle(
                    fontSize: 16,
                  fontWeight: FontWeight.bold,
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
