import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Opened Doors",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Align(
            child: Container(
              height: 200,
              width: 180,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.symmetric(
                    vertical: BorderSide(
                      color : Colors.white,
                      width: 45,
                    ),
                    horizontal: BorderSide(
                      color: Colors.black,
                      width: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.grey.shade100,
        ),
      ),
    ),
  );
}
