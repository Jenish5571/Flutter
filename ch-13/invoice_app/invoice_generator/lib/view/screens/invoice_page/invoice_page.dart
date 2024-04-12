import 'dart:ui';
import 'package:invoice_generator/headers.dart';

class Invoice_Page extends StatefulWidget {
  const Invoice_Page({super.key});

  @override
  State<Invoice_Page> createState() => _Invoice_PageState();
}

class _Invoice_PageState extends State<Invoice_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        heading: "Invoice Generate",
        context: context,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: GlobalRoute.invoiceOption
              .map(
                (e) => GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, e['route']);
                  },
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                      child: Container(
                        width: double.infinity,
                        height: 70,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xff2D3250),
                          borderRadius: BorderRadius.circular(55),
                        ),
                        child: Center(
                          child: ListTile(
                            leading: Image.asset(
                              "assets/images/logo_bk.png",
                              height: 80,
                            ),
                            title: Text(
                              e['title'],
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, e['route']);
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(
          context,
          GlobalRoute.pdfPage,
        ),
        label: const Text("PDF"),
        backgroundColor: const Color(0xffcae1f3),
        icon: const Icon(Icons.picture_as_pdf),
      ),
    );
  }
}
