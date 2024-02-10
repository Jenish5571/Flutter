import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("🛍 List Of Fruits",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          shadowColor: Colors.black,
          backgroundColor: Colors.blueGrey,
          elevation: 10,
        ),
        body: Center(
          child: RichText(
            text: const TextSpan(
              text: "🍎 Apple",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
              children: [
                TextSpan(
                  text: "\n🍇 Grapes",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.blue,
                  ),
                ),
                TextSpan(
                  text: "\n🍒 Cherry",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.red
                  ),
                  children: [
                    TextSpan(
                      text: "\n🍓 Strawberry",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent,
                      ),
                    ),
                    TextSpan(
                      text: "\n🥭 Mango",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.yellowAccent,
                      ),
                      children: [
                        TextSpan(
                          text: "\n🍍 Pineapple",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                        TextSpan(
                          text: "\n🍋 Lemon",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow,
                          ),
                          children: [
                            TextSpan(
                              text: "\n🍉 Watwermalon",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.greenAccent,
                              ),
                            ),
                            TextSpan(
                              text: "\n🥥 Coconut",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    ),
  );
}