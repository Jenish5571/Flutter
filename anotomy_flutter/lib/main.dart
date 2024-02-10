import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
            title: const Text("Whatsapp"),
            centerTitle : true,
            elevation:0,
            backgroundColor: Colors.green,
            actions: const [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.person),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          body: const Center(
            child: Text(
              "I am Jenish",
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent,
                  letterSpacing: 20,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.lime
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
