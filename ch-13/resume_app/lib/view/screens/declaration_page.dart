import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:resume_app/utills/resume_attibutes/resume_attibutes.dart';

class DeclarationPage extends StatefulWidget {
  const DeclarationPage({super.key});

  @override
  State<DeclarationPage> createState() => _DeclarationPageState();
}

class _DeclarationPageState extends State<DeclarationPage> {
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
                      "Declaration",
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
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
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
                                  "Declaration",
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
                                  "assets/images/build_option_screens/Declaration.png",
                                  height: h * 0.08,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Theme(
                                  data: ThemeData(
                                    useMaterial3: true,
                                  ),
                                  child: Switch(
                                    value: resume_attibutes.declaration,
                                    activeColor: Colors.deepPurple,
                                    thumbColor: MaterialStateProperty.all(
                                        Colors.deepPurple),
                                    activeThumbImage: const AssetImage(
                                      "assets/images/declaration/off.png",
                                    ),
                                    inactiveThumbImage: const AssetImage(
                                      "assets/images/declaration/on.png",
                                    ),
                                    onChanged: (val) {
                                      resume_attibutes.declaration = val;
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: resume_attibutes.declaration,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.network(
                                  "https://www.nicepng.com/png/detail/201-2010849_angel-emoji-emoji-iphone-iphoneemoji-angel-emotico.png",
                                  height: h * 0.1,
                                ),
                                SizedBox(
                                  height: h * 0.025,
                                ),
                                SizedBox(
                                  height: h * 0.06,
                                  width: w,
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                      hintText: "Description",
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
                                ),
                                SizedBox(
                                  height: h * 0.015,
                                ),
                                const Divider(),
                                Text(
                                  "Date",
                                  style: TextStyle(
                                    color: Color(0xff11009E),
                                    fontWeight: FontWeight.w600,
                                    fontSize: textScaler.scale(35),
                                  ),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "DD/MM/YYYY",
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
                                  "Place(city)",
                                  style: TextStyle(
                                    color: Color(0xff11009E),
                                    fontWeight: FontWeight.w600,
                                    fontSize: textScaler.scale(35),
                                  ),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "E.x. Surat",
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
                                            duration:
                                                const Duration(seconds: 5),
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
                                      child: Text("SUMBIT"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
