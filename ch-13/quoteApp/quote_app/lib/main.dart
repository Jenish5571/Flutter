import 'headers.dart';

void main() {
  runApp(
    const QuotesApp(),
  );
}

class QuotesApp extends StatelessWidget {
  const QuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.splashScreen: (context) => const SpleshScreen(),
        Routes.homePage: (context) => const homePage(),
        Routes.detailPage: (context) => const DetailPage(),
      },
    );
  }
}
