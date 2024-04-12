import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool digitalSwitch = false;
  bool analogSwitch = false;
  bool strapSwitch = false;
  bool timerWatch = false;

  bool isTimerClock = false;

  DateTime dateTime = DateTime.now();

  int hour = 0;
  int minute = 0;
  int second = 0;

  List<Map<String, dynamic>> timerHistory = [];
  int h = 0;
  int m = 0;
  int s = 0;

  List month = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "Nevember",
    "December",
  ];

  List weekday = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday",
  ];

  void timerClock() {
    isTimerClock = true;
    Future.delayed(
      const Duration(microseconds: 1),
      () {
        setState(() {
          if (isTimerClock) {
            s++;
          }
          if (s > 59) //  60 > 59
          {
            m++;
            s = 0;
          }
          if (m > 59) {
            h++;
            m = 0;
          }

          if (h > 12) {
            h = 0;
          }
        });
        if (isTimerClock) {
          timerClock();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        hour = DateTime.now().hour % 12;
        minute = DateTime.now().minute;
        second = DateTime.now().second;
      });
    });

    Size size = MediaQuery.of(context).size;
    TextScaler textScaler = MediaQuery.of(context).textScaler;
    double he = size.height;
    double wi = size.width;

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Jenish Hirpara"),
              accountEmail: Text("jenishhirapara5571@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/132265451?v=4"),
              ),
            ),
            ListTile(
              leading: Text(
                "01.",
                style: TextStyle(
                  fontSize: textScaler.scale(20),
                ),
              ),
              title: Text(
                "Digital Clock",
                style: TextStyle(
                  fontSize: textScaler.scale(22),
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: const Text("Clock"),
              trailing: Theme(
                data: ThemeData(
                  useMaterial3: true,
                ),
                child: Switch(
                  value: digitalSwitch,
                  onChanged: (val) {
                    digitalSwitch = val;
                    setState(() {});
                  },
                ),
              ),
            ),
            SizedBox(
              height: textScaler.scale(10),
            ),
            ListTile(
              leading: Text(
                "02.",
                style: TextStyle(
                  fontSize: textScaler.scale(20),
                ),
              ),
              title: Text(
                "Analog Clock",
                style: TextStyle(
                  fontSize: textScaler.scale(22),
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: const Text("Clock"),
              trailing: Theme(
                data: ThemeData(
                  useMaterial3: true,
                ),
                child: Switch(
                  value: analogSwitch,
                  onChanged: (val) {
                    analogSwitch = val;
                    setState(() {});
                  },
                ),
              ),
            ),
            SizedBox(
              height: textScaler.scale(10),
            ),
            ListTile(
              leading: Text(
                "03.",
                style: TextStyle(
                  fontSize: textScaler.scale(20),
                ),
              ),
              title: Text(
                "Strap Watch",
                style: TextStyle(
                  fontSize: textScaler.scale(22),
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: const Text("Clock"),
              trailing: Theme(
                data: ThemeData(
                  useMaterial3: true,
                ),
                child: Switch(
                  value: strapSwitch,
                  onChanged: (val) {
                    strapSwitch = val;
                    setState(() {});
                  },
                ),
              ),
            ),
            ListTile(
              leading: Text(
                "04.",
                style: TextStyle(
                  fontSize: textScaler.scale(20),
                ),
              ),
              title: Text(
                "Timer Watch",
                style: TextStyle(
                  fontSize: textScaler.scale(22),
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: const Text("Clock"),
              trailing: Theme(
                data: ThemeData(
                  useMaterial3: true,
                ),
                child: Switch(
                  value: timerWatch,
                  onChanged: (val) {
                    timerWatch = val;
                    setState(() {});
                  },
                ),
              ),
            ),
            SizedBox(
              height: textScaler.scale(10),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          "Clock App",
          style: TextStyle(
            fontSize: textScaler.scale(40),
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation: 2,
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade500,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: (!digitalSwitch &&
                  !analogSwitch &&
                  !strapSwitch &&
                  !timerWatch)
              ? const Image(
                  image: NetworkImage(
                      "https://cdn.textstudio.com/output/sample/normal/6/4/8/4/clock-logo-275-14846.png"),
                )
              : Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Visibility(
                        visible: digitalSwitch,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      height: he * 0.08,
                                      width: wi * 0.22,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff2c9bf4),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        hour.toString().padLeft(2, '0'),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: he * 0.05,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: he * 0.025,
                                      width: wi * 0.22,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff1d86d9),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "HOURS",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: he * 0.02,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: wi * 0.025,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: he * 0.08,
                                      width: wi * 0.22,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff2196f5),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        minute.toString().padLeft(2, '0'),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: he * 0.05,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: he * 0.025,
                                      width: wi * 0.22,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff127ed6),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "MINUTS",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: he * 0.02,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: wi * 0.025,
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: he * 0.08,
                                      width: wi * 0.22,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffff006a),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        second.toString().padLeft(2, '0'),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: he * 0.05,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: he * 0.025,
                                      width: wi * 0.22,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffec0062),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "SECONDS",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: he * 0.02,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: wi * 0.025,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: he * 0.07,
                                    ),
                                    Container(
                                      height: he * 0.035,
                                      width: wi * 0.1,
                                      decoration: const BoxDecoration(
                                        color: Color(0xff127ed6),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "PM",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: he * 0.02,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: he * 0.015,
                            ),
                            Text(
                              "${weekday[dateTime.weekday - 1]} ,${dateTime.day.toString().padLeft(2, '0')}  ${month[dateTime.month - 1]}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: textScaler.scale(25),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: analogSwitch,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: wi * 0.55,
                          backgroundImage: const AssetImage(
                            "assets/images/clock_image.png",
                          ),
                        ),
                      ),

                      Column(
                        children: [
                          SizedBox(
                            height: he * 0.47,
                          ),
                          Visibility(
                            visible: analogSwitch,
                            child: Container(
                              height: he * 0.03,
                              width: wi * 0.065,
                              color: Colors.grey.shade400,
                              child: Text(
                                "${dateTime.day.toString().padLeft(2, '0')}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: he * 0.028,
                                ),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                      // Hour
                      Visibility(
                        visible: analogSwitch,
                        child: Transform.rotate(
                          angle: pi / 2,
                          child: Transform.rotate(
                            angle: hour * (pi * 2) / 12,
                            child: Divider(
                              thickness: 5,
                              color: Colors.redAccent.shade200,
                              indent: wi * 0.35,
                              endIndent: wi * 0.45,
                            ),
                          ),
                        ),
                      ),

                      // Minutes
                      Visibility(
                        visible: analogSwitch,
                        child: Transform.rotate(
                          angle: (minute * (pi * 2)) / 60 + pi / 2,
                          child: Divider(
                            thickness: 4,
                            color: Colors.green.shade200,
                            indent: wi * 0.28,
                            endIndent: wi * 0.45,
                          ),
                        ),
                      ),

                      // seconds
                      Visibility(
                        visible: analogSwitch,
                        child: Transform.rotate(
                          angle: pi / 2,
                          child: Transform.rotate(
                            angle: (second * (pi * 2)) / 60,
                            child: Divider(
                              thickness: 3,
                              color: Colors.pinkAccent.shade200,
                              indent: wi * 0.25,
                              endIndent: wi * 0.4,
                            ),
                          ),
                        ),
                      ),

                      Visibility(
                        visible: analogSwitch,
                        child: CircleAvatar(
                          radius: wi * 0.015,
                          backgroundColor: Colors.grey,
                        ),
                      ),

                      // STRAP WATCH

                      // 60 Divider
                      ...List.generate(
                        60,
                        (index) => Visibility(
                          visible: strapSwitch,
                          child: Transform.rotate(
                            angle: (index * (pi * 2)) / 60,
                            child: Divider(
                              color: (index % 5 == 0)
                                  ? Colors.yellow
                                  : Colors.redAccent,
                              thickness: (index % 5 == 0) ? 5 : 2,
                              endIndent:
                                  (index % 5 == 0) ? wi * 0.85 : wi * 0.88,
                            ),
                          ),
                        ),
                      ),

                      // Second
                      Visibility(
                        visible: strapSwitch,
                        child: Transform.scale(
                          scale: 8,
                          child: CircularProgressIndicator(
                            strokeWidth: 1,
                            color: Colors.pinkAccent.shade200,
                            value: second / 60,
                          ),
                        ),
                      ),

                      Visibility(
                        visible: strapSwitch,
                        child: Column(
                          children: [
                            SizedBox(
                              height: he * 0.268,
                            ),
                            Text(
                              "Second",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Minute
                      Visibility(
                        visible: strapSwitch,
                        child: Transform.scale(
                          scale: 6,
                          child: CircularProgressIndicator(
                            strokeWidth: 1.2,
                            color: Colors.green,
                            value: minute / 60,
                          ),
                        ),
                      ),

                      Visibility(
                        visible: strapSwitch,
                        child: Column(
                          children: [
                            SizedBox(
                              height: he * 0.307,
                            ),
                            Text(
                              "minute",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Hour
                      Visibility(
                        visible: strapSwitch,
                        child: Transform.scale(
                          scale: 4,
                          child: CircularProgressIndicator(
                            strokeWidth: 1.5,
                            color: Colors.redAccent.shade200,
                            value: (hour + minute / 60) / 12,
                          ),
                        ),
                      ),

                      Visibility(
                        visible: strapSwitch,
                        child: Column(
                          children: [
                            SizedBox(
                              height: he * 0.347,
                            ),
                            Text(
                              "hour",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Visibility(
                        visible: strapSwitch,
                        child: Container(
                          height: he * 0.03,
                          width: wi * 0.065,
                          color: Colors.grey,
                          child: Text(
                            "${dateTime.day.toString().padLeft(2, '0')}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: h * 0.028,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                      ),

                      Visibility(
                        visible: timerWatch,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Text(
                                  "${h.toString().padLeft(2, '0')} : ${m.toString().padLeft(2, '0')} : ${s.toString().padLeft(2, '0')}",
                                  style: TextStyle(
                                      fontSize: textScaler.scale(55),
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    ...timerHistory
                                        .map(
                                          (e) => GestureDetector(
                                            onTap: () {
                                              timerHistory.remove(e);
                                              setState(() {});
                                            },
                                            child: Card(
                                              margin: const EdgeInsets.all(10),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(16),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Hour\n  ${e['hour']}",
                                                      style: TextStyle(
                                                        fontSize: textScaler
                                                            .scale(20),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Minute\n  ${e['minute']}",
                                                      style: TextStyle(
                                                        fontSize: textScaler
                                                            .scale(20),
                                                      ),
                                                    ),
                                                    Text(
                                                      "Second\n  ${e['second']}",
                                                      style: TextStyle(
                                                        fontSize: textScaler
                                                            .scale(20),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(wi * 0.025),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        if (!isTimerClock) {
                                          timerClock();
                                        }
                                        setState(() {});
                                      },
                                      child: const Text("Start"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        isTimerClock = false;
                                        timerHistory.add({
                                          'hour': h,
                                          'minute': m,
                                          'second': s,
                                        });
                                        setState(() {});
                                      },
                                      child: const Text("Stop"),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        isTimerClock = false;
                                        s = m = h = 0;
                                        timerHistory = [];
                                        setState(() {});
                                      },
                                      child: const Text("Restart"),
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
      ),
      backgroundColor: (!digitalSwitch && !analogSwitch && !strapSwitch)
          ? Colors.black
          : Color(0xff14162b),
    );
  }
}
