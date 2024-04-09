import 'package:invoice_generator/headers.dart';
import 'package:invoice_generator/view/screens/utills/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Menu🍔🍰😋",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xff2D3250),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/home_page/menu.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, GlobalRoute.invoicePage);
        },
        // backgroundColor: Colors.grey.withOpacity(0.7),
        backgroundColor: const Color(0xffcae1f3),
        label: const Text(
          "Create",
          style: TextStyle(color: Colors.black),
        ),
        icon: const Icon(Icons.create),
      ),
    );
  }
}
