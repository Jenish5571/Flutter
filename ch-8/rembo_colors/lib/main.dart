import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Couriter App",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            shadowColor: Colors.black,
            elevation: 10,
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
          body: Align(
            child: Container(
              width: 500,
              height: 250,
              decoration: BoxDecoration(
                color: Color(0xffB80000),
                border: Border.all(
                  color: Colors.transparent,
                  width: 3,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(350),
                  topRight: Radius.circular(350),
                ),
              ),
              alignment: Alignment(0,1.2),

              child: Container(
                width: 450,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  border: Border.all(
                    color: Colors.transparent,
                    width: 3,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(350),
                    topRight: Radius.circular(350),
                  ),
                ),
                alignment: Alignment(0,1.3),
                child: Container(
                  width: 400,
                  height: 195,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    border: Border.all(
                      color: Colors.transparent,
                      width: 3,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(350),
                      topRight: Radius.circular(350),
                    ),
                  ),
                  alignment: Alignment(0,1.4),
                  child: Container(
                    width: 350,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                        color: Colors.transparent,
                        width: 3,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(300),
                        topRight: Radius.circular(300),
                      ),
                    ),
                    alignment: Alignment(0,1.4),
                    child: Container(
                      width: 300,
                      height: 145,
                      decoration: BoxDecoration(
                        color: Color(0xff4CB9E7),
                        border: Border.all(
                          color: Colors.transparent,
                          width: 3,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(300),
                          topRight: Radius.circular(300),
                        ),
                      ),
                      alignment: Alignment(0,1.4),
                      child: Container(
                        width: 250,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Color(0xff3559E0),
                          border: Border.all(
                            color: Colors.transparent,
                            width: 3,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(300),
                            topRight: Radius.circular(300),
                          ),
                        ),
                        alignment: Alignment(0,1.2),
                        child: Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xff392467),
                            border: Border.all(
                              color: Colors.transparent,
                              width: 3,
                            ),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(300),
                              topRight: Radius.circular(300),
                            ),
                          ),
                          alignment: Alignment(0,1.9),
                          child: Container(
                            width: 150,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.transparent,
                                width: 3,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(300),
                                topRight: Radius.circular(300),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
