import 'package:flutter/material.dart';
import 'package:resume_app/utills/resume_attibutes/resume_attibutes.dart';

class ExperiencesPage extends StatefulWidget {
  const ExperiencesPage({super.key});

  @override
  State<ExperiencesPage> createState() => _ExperiencesPageState();
}

class _ExperiencesPageState extends State<ExperiencesPage> {
  @override
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    TextScaler textScaler = MediaQuery.of(context).textScaler;
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;

    return SafeArea(
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
                      "Experiences",
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
                            const Spacer(),
                            Expanded(
                              flex: 4,
                              child: Text(
                                "Experiences",
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
                                "assets/images/build_option_screens/Experiences.png",
                                height: h * 0.08,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Company Name",
                                style: TextStyle(
                                  fontSize: h * 0.03,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff11009E),
                                ),
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "E.x.Jenu.ptd",
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
                                "School/Collage",
                                style: TextStyle(
                                  fontSize: h * 0.03,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff11009E),
                                ),
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Quality Test Engineer",
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
                                "Roles(Optional)",
                                style: TextStyle(
                                  fontSize: h * 0.03,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff11009E),
                                ),
                              ),
                              TextFormField(
                                maxLines: 3,
                                decoration: const InputDecoration(
                                  hintText:
                                      "Working with team members to\ncome up with new concepts and\nproduct analysis...",
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
                                "Employed status",
                                style: TextStyle(
                                  fontSize: h * 0.03,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff11009E),
                                ),
                              ),
                              Row(
                                children: [
                                  Radio(
                                    value: "Previously Employed",
                                    groupValue: resume_attibutes.employed,
                                    onChanged: (val) {
                                      setState(() {
                                        resume_attibutes.employed = val;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Previously Employed",
                                    style: TextStyle(
                                      fontSize: h * 0.02,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Radio(
                                    value: "Currently Employed",
                                    groupValue: resume_attibutes.employed,
                                    onChanged: (val) {
                                      setState(() {
                                        resume_attibutes.employed = val;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Currently Employed",
                                    style: TextStyle(
                                      fontSize: h * 0.02,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Join_Date",
                                style: TextStyle(
                                  fontSize: h * 0.03,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff11009E),
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
                              Text(
                                "Exit_Date",
                                style: TextStyle(
                                  fontSize: h * 0.03,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff11009E),
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
