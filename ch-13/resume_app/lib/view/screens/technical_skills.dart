import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app/utills/resume_attibutes/resume_attibutes.dart';

class TechnicalSkillsPage extends StatefulWidget {
  const TechnicalSkillsPage({super.key});

  @override
  State<TechnicalSkillsPage> createState() => _TechnicalSkillsPageState();
}

class _TechnicalSkillsPageState extends State<TechnicalSkillsPage> {
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
                      "Technical Skills",
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
                  padding: const EdgeInsets.all(12),
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
                              "Technical Skills",
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
                              "assets/images/build_option_screens/Tech.png",
                              height: h * 0.08,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                      const Divider(),
                      Text(
                        "Enter your skills",
                        style: TextStyle(
                          fontSize: h * 0.025,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ...List.generate(
                        resume_attibutes.technicalSkill.length,
                        (index) => Field(index: index),
                      ),
                      Align(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              resume_attibutes.technicalSkill.add("");
                              resume_attibutes.technicalController
                                  .add(TextEditingController());
                            });
                          },
                          icon: const Icon(Icons.add),
                          label: const Text("Add"),
                        ),
                      ),
                    ],
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

Widget Field({required int index}) {
  return Row(
    children: [
      Expanded(
        child: TextField(
          controller: resume_attibutes.technicalController[index],
          onChanged: (val) {
            resume_attibutes.technicalSkill[index] = val;
          },
          decoration: const InputDecoration(
            hintText: "C Programming",
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
      IconButton(
        onPressed: () {
          log("INDEX : $index");
          resume_attibutes.technicalSkill.removeAt(index);
          resume_attibutes.technicalController.removeAt(index);
        },
        icon: const Icon(CupertinoIcons.delete),
      ),
    ],
  );
}
