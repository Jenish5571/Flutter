import 'package:flutter/material.dart';
import 'package:resume_app/utills/resume_attibutes/resume_attibutes.dart';

class ReferencesPage extends StatefulWidget {
  const ReferencesPage({super.key});

  @override
  State<ReferencesPage> createState() => _ReferencesPageState();
}

class _ReferencesPageState extends State<ReferencesPage> {
  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
                child: Row(
                  children: [
                    SizedBox(
                      width: w * 0.028,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Text(
                      "References",
                      style: TextStyle(
                        fontSize: textScaler.scale(30),
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
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
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(16),
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Expanded(
                          flex: 4,
                          child: Text(
                            "References",
                            style: TextStyle(
                              fontSize: textScaler.scale(25),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Expanded(
                          flex: 2,
                          child: Image.asset(
                            "assets/images/build_option_screens/References.png",
                            height: h * 0.08,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    const Divider(),
                    Form(
                      key: formKey,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "References Name",
                                style: TextStyle(
                                  fontSize: h * 0.03,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff11009E),
                                ),
                              ),
                              SizedBox(
                                height: h * 0.025,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Jenuu",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    letterSpacing: 1,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xff11009E),
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: h * 0.025,
                              ),
                              Text(
                                "Designation",
                                style: TextStyle(
                                  fontSize: h * 0.03,
                                  color: const Color(0xff11009E),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: h * 0.025,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Flutter Developer",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    letterSpacing: 1,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xff11009E),
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: h * 0.025,
                              ),
                              Text(
                                "Organization/Institute",
                                style: TextStyle(
                                  fontSize: h * 0.03,
                                  color: const Color(0xff11009E),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: h * 0.025,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Jenuu Pvt.Ltd",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    letterSpacing: 1,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xff11009E),
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: h * 0.025,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        formKey.currentState!.save();

                                        SnackBar snackBar = SnackBar(
                                          backgroundColor: Colors.green,
                                          margin: const EdgeInsets.all(15),
                                          behavior: SnackBarBehavior.floating,
                                          duration: const Duration(seconds: 5),
                                          elevation: 20,
                                          actionOverflowThreshold: 1,
                                          showCloseIcon: true,
                                          closeIconColor: Colors.white,
                                          action: SnackBarAction(
                                            label: "Back",
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          dismissDirection:
                                              DismissDirection.horizontal,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          content: const Text(
                                              "Save Data Successfully 👍"),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                        setState(() {});
                                      }
                                    },
                                    child: const Text("SUMBIT"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
