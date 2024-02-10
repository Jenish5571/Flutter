import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        top: true,
        child: Text("\n\nHello\n\n\n\n\n\nDart\n\n\n\n\n\nFlutter",
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}