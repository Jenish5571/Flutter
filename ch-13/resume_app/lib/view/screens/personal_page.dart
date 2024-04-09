import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:resume_app/utills/resume_attibutes/resume_attibutes.dart';

class PersonPage extends StatefulWidget {
  const PersonPage({super.key});

  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
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
                      "Personal Details",
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
                                "Personal_details",
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
                                "assets/images/build_option_screens/Person.png",
                                height: h * 0.08,
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.all(18),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DOB",
                                  style: TextStyle(
                                    fontSize: h * 0.03,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff11009E),
                                  ),
                                ),
                                TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter DOB...";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onSaved: (val) {
                                    resume_attibutes.dob;
                                  },
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
                                  "Gender",
                                  style: TextStyle(
                                    fontSize: h * 0.03,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff11009E),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: "Male",
                                      groupValue: resume_attibutes.gender,
                                      onChanged: (val) {
                                        setState(() {
                                          resume_attibutes.gender = val;
                                        });
                                      },
                                    ),
                                    Text(
                                      "Male",
                                      style: TextStyle(
                                        fontSize: h * 0.022,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Radio(
                                      value: "Female",
                                      groupValue: resume_attibutes.gender,
                                      onChanged: (val) {
                                        setState(() {
                                          resume_attibutes.gender = val;
                                        });
                                      },
                                    ),
                                    Text(
                                      "Female",
                                      style: TextStyle(
                                        fontSize: h * 0.022,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Language",
                                  style: TextStyle(
                                    fontSize: h * 0.03,
                                    color: const Color(0xff11009E),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      activeColor: Color(0xff11009E),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      value: resume_attibutes.hindi,
                                      onChanged: (val) {
                                        setState(() {
                                          resume_attibutes.hindi = val ?? false;
                                        });
                                      },
                                    ),
                                    Text(
                                      "Hindi",
                                      style: TextStyle(
                                        fontSize: h * 0.022,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      activeColor: Color(0xff11009E),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      value: resume_attibutes.english,
                                      onChanged: (val) {
                                        setState(() {
                                          resume_attibutes.english =
                                              val ?? false;
                                        });
                                      },
                                    ),
                                    Text(
                                      "English",
                                      style: TextStyle(
                                        fontSize: h * 0.022,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Checkbox(
                                      activeColor: Color(0xff11009E),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      value: resume_attibutes.gujarati,
                                      onChanged: (val) {
                                        setState(() {
                                          resume_attibutes.gujarati =
                                              val ?? false;
                                        });
                                      },
                                    ),
                                    Text(
                                      "Gujarati",
                                      style: TextStyle(
                                        fontSize: h * 0.022,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Nationality",
                                  style: TextStyle(
                                    fontSize: h * 0.03,
                                    color: const Color(0xff11009E),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextFormField(
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Enter Nationality...";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onSaved: (val) {
                                    resume_attibutes.nationality = val ?? "";
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "Indian",
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
                                  height: h * 0.005,
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
    );
  }
}
