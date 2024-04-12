import 'package:invoice_generator/headers.dart';
import 'package:invoice_generator/view/screens/pdf_page/pdf_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        GlobalRoute.splashscreen: (context) => const SplashScreen(),
        GlobalRoute.homepage: (context) => const HomePage(),
        GlobalRoute.invoicePage: (context) => const Invoice_Page(),
        GlobalRoute.pdfPage: (context) => const PdfPage(),
        GlobalRoute.invoiceOption[0]['route']: (context) =>
            const HedersOptionPage(),
        GlobalRoute.invoiceOption[1]['route']: (context) =>
            const ProductOptionPage(),
      },
    );
  }
}
