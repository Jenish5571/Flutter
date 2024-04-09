import 'package:flutter/material.dart';
import 'package:resume_app/utills/resume_attibutes/resume_attibutes.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
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
                      "Projects",
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
                              "Projects",
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
                              "assets/images/build_option_screens/Projects.png",
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Project Title",
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
                                  hintText: "Resume Build App",
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
                                "Technologies",
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
                                    value: resume_attibutes.c_programming,
                                    onChanged: (val) {
                                      setState(() {
                                        resume_attibutes.c_programming =
                                            val ?? false;
                                      });
                                    },
                                  ),
                                  Text(
                                    "C Programming",
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
                                    value: resume_attibutes.dart,
                                    onChanged: (val) {
                                      setState(() {
                                        resume_attibutes.dart = val ?? false;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Dart",
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
                                    value: resume_attibutes.flutter,
                                    onChanged: (val) {
                                      setState(() {
                                        resume_attibutes.flutter = val ?? false;
                                      });
                                    },
                                  ),
                                  Text(
                                    "Flutter",
                                    style: TextStyle(
                                      fontSize: h * 0.022,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Role",
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
                                  hintText:
                                      "Organize team members,code analysis",
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
                                "Technologies",
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
                                  hintText: "5-Programmers",
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
                                "Project Descripation",
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
                                  hintText: "Enter your project Descripation",
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
