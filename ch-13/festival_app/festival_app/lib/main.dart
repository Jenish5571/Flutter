import 'headers.dart';

void main() {
  runApp(
    const festivalApp(),
  );
}

class festivalApp extends StatelessWidget {
  const festivalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
    );
  }
}
