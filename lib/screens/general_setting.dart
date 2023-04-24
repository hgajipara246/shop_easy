import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_easy/screens/currency_page.dart';
import 'package:shop_easy/screens/language_page.dart';
import 'package:shop_easy/screens/offline_mode.dart';

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
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x15000000),
                        offset: Offset(0, 5),
                        blurRadius: 15,
                      ),
                    ],
                    border: Border.all(
                      color: const Color(0xFFF5F5F5),
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
                            const Text(
                              "Dark Mode",
                              style: TextStyle(
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFF1E1E1E),
                              ),
                            ),
                            CupertinoSwitch(
                              trackColor: const Color(0xFFF5F5F5),
                              thumbColor: const Color(0xFFFFA500),
                              activeColor: const Color(0xFFFFA500),
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
                        const SizedBox(height: 25),
                        InkWell(
                          onTap: () {
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Language(),
                                ),
                              );
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Language",
                                style: TextStyle(
                                  fontFamily: "WorkSans",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xFF1E1E1E),
                                ),
                              ),
                              Row(
                                children: const [
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
                        ),
                        const SizedBox(height: 35),
                        InkWell(
                          onTap: () {
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CurrencyPage(),
                                ),
                              );
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Currency",
                                style: TextStyle(
                                  fontFamily: "WorkSans",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xFF1E1E1E),
                                ),
                              ),
                              Row(
                                children: const [
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
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Dark Mode",
                              style: TextStyle(
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFF1E1E1E),
                              ),
                            ),
                            CupertinoSwitch(
                              trackColor: const Color(0xFFF5F5F5),
                              thumbColor: const Color(0xFFFFA500),
                              activeColor: const Color(0xFFFFA500),
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
                        const SizedBox(height: 30),
                        InkWell(
                          onTap: () {
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OfflineMode(),
                                ),
                              );
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
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
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Autoplay videos only on WIFI",
                              style: TextStyle(
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFF1E1E1E),
                              ),
                            ),
                            CupertinoSwitch(
                              trackColor: const Color(0xFFF5F5F5),
                              thumbColor: const Color(0xFFFFA500),
                              activeColor: const Color(0xFFFFA500),
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
      ),
    );
  }
}
