import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Mashal",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.brown,
          ),
          body: Align(
            child: Container(
              height: 200,
              width: 150,
              color: Colors.white,
              alignment: Alignment.topCenter,
              child: Container(
                height: 30,
                width: 150,
                color: Colors.brown.shade400,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
