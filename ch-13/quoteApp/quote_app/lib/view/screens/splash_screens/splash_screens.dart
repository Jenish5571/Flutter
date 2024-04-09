import 'dart:html';

import 'package:quote_app/headers.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({super.key});

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              "assets/image/splash_screen_image/splesh.png",
            ),
          ),
          Text(
            "Quotez",
            style: TextStyle(
              fontSize: 60,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
