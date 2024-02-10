import 'package:flutter/material.dart';
import 'package:marvel_univarse_8_9/uttills/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MARVEL UNIVERSE",
          style: TextStyle(
            fontSize: h * 0.035,
            color: Colors.white,
            letterSpacing: 3,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff10002b),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: h * 0.09,
            ),
            Text(
              "AVENGERS",
              style: TextStyle(
                fontSize: h * 0.04,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: h * 0.1,
            ),
            Stack(
              children: [
                ...Product.map(
                  (e) => Positioned(
                    bottom: 70,
                    height: 200,
                    width: 200,
                    child: Container(
                      height: h * 0.3,
                      width: w * 0.55,
                      decoration: BoxDecoration(
                        color: Color(0xff51138c),
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(
                            e['image'],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff240046),
    );
  }
}
