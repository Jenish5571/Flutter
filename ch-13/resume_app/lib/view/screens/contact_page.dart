import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_app/utills/resume_attibutes/resume_attibutes.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  void dispose() {
    super.dispose();
    FocusManager.instance.primaryFocus?.unfocus();
  }

  // Image Pick Camera
  Future<void> imagePickWithCamera() async {
    ImagePicker picker = ImagePicker();
    XFile? xFile = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (xFile != null) {
        resume_attibutes.image = File(xFile.path);
      }
    });
  }

  // Image Pick Gallery
  Future<void> imagePickWithGallery() async {
    ImagePicker picker = ImagePicker();
    XFile? xFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (xFile != null) {
        resume_attibutes.image = File(xFile.path);
      }
    });
  }

  int _selected = 0;
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
                        "Contact Info",
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
                      Padding(
                        padding: const EdgeInsets.all(18),
                        child: Row(
                          children: [
                            Spacer(),
                            Expanded(
                              flex: 4,
                              child: Text(
                                "Contact Info",
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
                                "assets/images/build_option_screens/Contact.png",
                                height: h * 0.05,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selected = 0;
                                });
                                log("Contact clicked...");
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Color(0xff11009E),
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.amber,
                                      width: _selected == 0 ? 4 : 0,
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "Contact",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selected = 1;
                                });
                                log("Image clicked...");
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Color(0xff11009E),
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.amber,
                                      width: _selected == 1 ? 4 : 0,
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  "Image",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: IndexedStack(
                          index: _selected,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(16),
                              child: Container(
                                color: Colors.white,
                                child: Form(
                                  key: formKey,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        TextFormField(
                                          initialValue: resume_attibutes.name,
                                          textInputAction: TextInputAction.next,
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter your name...";
                                            } else {
                                              return null;
                                            }
                                          },
                                          onSaved: (val) {
                                            resume_attibutes.name = val ?? "";
                                          },
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.person),
                                            labelText: "Name",
                                            hintText: "E.x.jenish hirpara",
                                            hintStyle: TextStyle(
                                              fontSize: textScaler.scale(20),
                                              color: Colors.grey.shade400,
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: BorderSide(
                                                color: Colors.grey.shade400,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: const BorderSide(
                                                color: Color(0xff11009E),
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: h * 0.025,
                                        ),
                                        TextFormField(
                                          keyboardType: TextInputType.phone,
                                          initialValue:
                                              resume_attibutes.phoneNumber,
                                          textInputAction: TextInputAction.next,
                                          validator: (val) {
                                            return (val!.isEmpty)
                                                ? "Enter your phone number..."
                                                : (val.length == 10)
                                                    ? null
                                                    : "number is not required";
                                          },
                                          onSaved: (val) {
                                            resume_attibutes.phoneNumber =
                                                val ?? "";
                                          },
                                          maxLength: 10,
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.dialpad),
                                            labelText: "Number",
                                            hintText: "E.x.1234567890",
                                            hintStyle: TextStyle(
                                              fontSize: textScaler.scale(20),
                                              color: Colors.grey.shade400,
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: BorderSide(
                                                color: Colors.grey.shade400,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: const BorderSide(
                                                color: Color(0xff11009E),
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: h * 0.025,
                                        ),
                                        TextFormField(
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          initialValue: resume_attibutes.email,
                                          textInputAction: TextInputAction.next,
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter your email...";
                                            } else {
                                              return null;
                                            }
                                          },
                                          onSaved: (val) {
                                            resume_attibutes.email = val ?? "";
                                          },
                                          decoration: InputDecoration(
                                            prefixIcon:
                                                Icon(Icons.email_outlined),
                                            labelText: "Email",
                                            hintText: "E.x.jenish01@gmail.com",
                                            hintStyle: TextStyle(
                                              fontSize: textScaler.scale(20),
                                              color: Colors.grey.shade400,
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: BorderSide(
                                                color: Colors.grey.shade400,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: const BorderSide(
                                                color: Color(0xff11009E),
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: h * 0.025,
                                        ),
                                        TextFormField(
                                          keyboardType: TextInputType.multiline,
                                          initialValue:
                                              resume_attibutes.address,
                                          textInputAction: TextInputAction.done,
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter your address...";
                                            } else {
                                              return null;
                                            }
                                          },
                                          onSaved: (val) {
                                            resume_attibutes.address =
                                                val ?? "";
                                          },
                                          maxLines: 2,
                                          decoration: InputDecoration(
                                            prefixIcon: const Icon(
                                                Icons.location_on_outlined),
                                            labelText: "Address",
                                            hintText: "Enter your Address....",
                                            hintStyle: TextStyle(
                                              fontSize: textScaler.scale(20),
                                              color: Colors.grey.shade400,
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: BorderSide(
                                                color: Colors.grey.shade400,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              borderSide: const BorderSide(
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                if (formKey.currentState!
                                                    .validate()) {
                                                  formKey.currentState!.save();
                                                  log(resume_attibutes.name ??
                                                      "");
                                                  log(resume_attibutes
                                                      .phoneNumber);
                                                  log(resume_attibutes.email);
                                                  log(resume_attibutes.address);

                                                  SnackBar snackBar = SnackBar(
                                                    backgroundColor:
                                                        Colors.green,
                                                    margin:
                                                        const EdgeInsets.all(
                                                            15),
                                                    behavior: SnackBarBehavior
                                                        .floating,
                                                    duration: const Duration(
                                                        seconds: 5),
                                                    elevation: 20,
                                                    actionOverflowThreshold: 1,
                                                    showCloseIcon: true,
                                                    closeIconColor:
                                                        Colors.white,
                                                    action: SnackBarAction(
                                                      label: "Back",
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                    ),
                                                    dismissDirection:
                                                        DismissDirection
                                                            .horizontal,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
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
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(18),
                              child: Container(
                                height: h * 0.3,
                                color: Colors.grey.shade200,
                                alignment: Alignment.center,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CircleAvatar(
                                      radius: w * 0.15,
                                      foregroundImage: (resume_attibutes
                                                  .image !=
                                              null)
                                          ? FileImage(resume_attibutes.image!)
                                          : null,
                                      child: Text(
                                        "ADD",
                                        style: TextStyle(
                                          fontSize: h * 0.025,
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: const Text(
                                                "Image",
                                              ),
                                              content: Row(
                                                children: [
                                                  ElevatedButton.icon(
                                                    onPressed: () async {
                                                      await imagePickWithCamera();
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    icon: const Icon(
                                                        Icons.camera_alt),
                                                    label: const Text("Camera"),
                                                  ),
                                                  const SizedBox(
                                                    width: 20,
                                                  ),
                                                  ElevatedButton.icon(
                                                    onPressed: () async {
                                                      await imagePickWithGallery();
                                                      Navigator.pop(context);
                                                    },
                                                    icon:
                                                        const Icon(Icons.photo),
                                                    label:
                                                        const Text("Gallery"),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.blueAccent,
                                        child: Icon(
                                          Icons.camera,
                                          color: Colors.white,
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
                    ],
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
