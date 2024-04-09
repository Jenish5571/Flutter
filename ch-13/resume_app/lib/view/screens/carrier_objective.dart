import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume_app/utills/resume_attibutes/resume_attibutes.dart';

class CarrierObjectivePage extends StatefulWidget {
  const CarrierObjectivePage({super.key});

  @override
  State<CarrierObjectivePage> createState() => _CarrierObjectivePageState();
}

class _CarrierObjectivePageState extends State<CarrierObjectivePage> {
  @override
  void dispose() {
    super.dispose();
    FocusManager.instance.primaryFocus?.unfocus();
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    TextScaler textScaler = MediaQuery.of(context).textScaler;
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          backgroundColor: const Color(0xff11009E),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  width: w,
                  color: const Color(0xff11009E),
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
                        "Carrier Objective",
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
                    color: const Color(0xffFFFFFF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(w * 0.1),
                      topRight: Radius.circular(w * 0.1),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    child: Form(
                      key: formKey,
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
                                  "Carrier Objective",
                                  style: TextStyle(
                                    fontSize: textScaler.scale(25),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Spacer(
                                flex: 2,
                              ),
                              Expanded(
                                flex: 2,
                                child: Image.asset(
                                  "assets/images/build_option_screens/Carrier.png",
                                  height: h * 0.08,
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.all(18),
                            child: Container(
                              color: Colors.white,
                              child: Column(
                                children: [
                                  Container(
                                    height: h * 0.27,
                                    width: w,
                                    padding: const EdgeInsets.all(20),
                                    color: Colors.grey.shade200,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Carrier Objective",
                                          style: TextStyle(
                                            fontSize: textScaler.scale(30),
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xff11009E),
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        SizedBox(
                                          height: h * 0.02,
                                        ),
                                        TextFormField(
                                          onSaved: (val) {
                                            resume_attibutes.descripation =
                                                val ?? "";
                                          },
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter descripation...";
                                            } else {
                                              return null;
                                            }
                                          },
                                          maxLines: 5,
                                          decoration: InputDecoration(
                                            prefixIcon: const Icon(
                                              Icons.description,
                                            ),
                                            labelText: "Descripation",
                                            labelStyle: TextStyle(
                                              fontSize: textScaler.scale(30),
                                              color: Colors.grey.shade600,
                                            ),
                                            hintText: "E.x.descripation",
                                            hintStyle: TextStyle(
                                              fontSize: textScaler.scale(30),
                                              color: Colors.grey.shade600,
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: BorderSide(
                                                color: Colors.grey.shade600,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: const BorderSide(
                                                color: Color(0xff11009E),
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: h * 0.01,
                                  ),
                                  Container(
                                    height: h * 0.3,
                                    width: w,
                                    padding: EdgeInsets.all(20),
                                    color: Colors.grey.shade200,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Carrent Designation \n(Experienced Candidate)",
                                          style: TextStyle(
                                            fontSize: textScaler.scale(30),
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff11009E),
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        SizedBox(
                                          height: h * 0.02,
                                        ),
                                        TextFormField(
                                          onSaved: (val) {
                                            resume_attibutes.descripation =
                                                val ?? "";
                                          },
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter Designation...";
                                            } else {
                                              return null;
                                            }
                                          },
                                          maxLines: 5,
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.description_outlined,
                                            ),
                                            labelText: "Designation",
                                            labelStyle: TextStyle(
                                              fontSize: textScaler.scale(30),
                                              color: Colors.grey.shade600,
                                            ),
                                            hintText: "E.x.Flutter",
                                            hintStyle: TextStyle(
                                              fontSize: textScaler.scale(30),
                                              color: Colors.grey.shade600,
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: BorderSide(
                                                color: Colors.grey.shade600,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: const BorderSide(
                                                color: Color(0xff11009E),
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: h * 0.02,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          if (formKey.currentState!
                                              .validate()) {
                                            formKey.currentState!.save();
                                            log(resume_attibutes.descripation ??
                                                "");
                                            log(resume_attibutes.designation ??
                                                "");

                                            SnackBar snackBar = SnackBar(
                                              backgroundColor: Colors.green,
                                              margin: const EdgeInsets.all(15),
                                              behavior:
                                                  SnackBarBehavior.floating,
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
                                        child: const Text("SUMBIT"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
