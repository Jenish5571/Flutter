import 'dart:async';
import 'package:invoice_generator/headers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isAnimated = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        isAnimated = false;
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacementNamed(GlobalRoute.homepage);
      },
    );

    return Scaffold(
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          // transitionBuilder: (child, animation) {
          //   return ScaleTransition(scale: animation, child: child);
          // },
          child: Image(
            key: UniqueKey(),
            image: const AssetImage(
              "assets/images/logo_bk.png",
            ),
          ),
        ),
      ),
    );
  }
}
