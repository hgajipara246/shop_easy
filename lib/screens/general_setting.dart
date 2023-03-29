import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class GeneralSetting extends StatefulWidget {
  const GeneralSetting({Key? key}) : super(key: key);

  @override
  State<GeneralSetting> createState() => _GeneralSettingState();
}

class _GeneralSettingState extends State<GeneralSetting> {
  bool switchValueOne = false;
  bool switchValuetwo = true;
  bool switchValuethree = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.dehaze_rounded,
          color: Color(0xFF1E1E1E),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image.asset(
              "assets/icons/notifications.png",
              height: 25,
              width: 25,
            ),
          )
        ],
        title: Text(
          "General Settings",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: "Poppins",
            fontSize: 20,
            color: Color(0xFF1E1E1E),
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x15000000),
                      offset: Offset(0, 5),
                      blurRadius: 15,
                    ),
                  ],
                  border: Border.all(
                    color: Color(0xFFF5F5F5),
                    width: 2,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dark Mode",
                            style: TextStyle(
                              fontFamily: "WorkSans",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                          CupertinoSwitch(
                            trackColor: Color(0xFFF5F5F5),
                            thumbColor: Color(0xFFFFA500),
                            activeColor: Color(0xFFFFA500),
                            dragStartBehavior: DragStartBehavior.down,
                            value: switchValueOne,
                            onChanged: (value) {
                              debugPrint("Value --->> $value");
                              switchValueOne = value;

                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Language",
                            style: TextStyle(
                              fontFamily: "WorkSans",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "English",
                                style: TextStyle(
                                  fontFamily: "WorkSans",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xFFA1A1A1),
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 13,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Currency",
                            style: TextStyle(
                              fontFamily: "WorkSans",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "NGN",
                                style: TextStyle(
                                  fontFamily: "WorkSans",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xFFA1A1A1),
                                ),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 13,
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dark Mode",
                            style: TextStyle(
                              fontFamily: "WorkSans",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                          CupertinoSwitch(
                            trackColor: Color(0xFFF5F5F5),
                            thumbColor: Color(0xFFFFA500),
                            activeColor: Color(0xFFFFA500),
                            dragStartBehavior: DragStartBehavior.down,
                            value: switchValuetwo,
                            onChanged: (value) {
                              debugPrint("Value --->> $value");
                              switchValuetwo = value;

                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Offline Mode",
                            style: TextStyle(
                              fontFamily: "WorkSans",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 13,
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Autoplay videos only on WIFI",
                            style: TextStyle(
                              fontFamily: "WorkSans",
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                          CupertinoSwitch(
                            trackColor: Color(0xFFF5F5F5),
                            thumbColor: Color(0xFFFFA500),
                            activeColor: Color(0xFFFFA500),
                            dragStartBehavior: DragStartBehavior.down,
                            value: switchValuethree,
                            onChanged: (value) {
                              debugPrint("Value --->> $value");
                              switchValuethree = value;

                              setState(() {});
                            },
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
    );
  }
}
