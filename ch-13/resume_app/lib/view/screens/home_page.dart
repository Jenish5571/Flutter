import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_app/utills/routes.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> pdfView() async {
    pw.Document pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Text(
              "Hello World",
              style: pw.TextStyle(
                fontSize: 80,
                color: PdfColors.blue,
                fontWeight: pw.FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
    Uint8List data = await pdf.save();
    var Printing;
    Printing.layoutPdf(
      onLayout: (format) => data,
    );
  }

  @override
  Widget build(BuildContext context) {
    TextScaler textScaler = MediaQuery.of(context).textScaler;
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff11009E),
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: w,
                color: Color(0xff11009E),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            "Resume Builder",
                            style: TextStyle(
                              fontSize: textScaler.scale(30),
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(Routes.pdf_page);
                        },
                        icon: Icon(
                          Icons.picture_as_pdf,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(w * 0.1),
                    topRight: Radius.circular(w * 0.1),
                  ),
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: const AssetImage(
                        "assets/images/home_screens/box.png",
                      ),
                      height: h * 0.2,
                    ),
                    SizedBox(
                      height: h * 0.01,
                    ),
                    Text(
                      "No Resume + Please create a new Resume",
                      style: TextStyle(
                        fontSize: textScaler.scale(25),
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.build_page);
          },
          backgroundColor: Color(0xff11009E),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
