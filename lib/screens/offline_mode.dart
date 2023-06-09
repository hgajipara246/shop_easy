import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OfflineMode extends StatefulWidget {
  const OfflineMode({Key? key}) : super(key: key);

  @override
  State<OfflineMode> createState() => _OfflineModeState();
}

class _OfflineModeState extends State<OfflineMode> {
  bool switchValueOne = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Offline Mode",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: "Poppins",
            fontSize: 20,
            color: Color(0xFF1E1E1E),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Text(
                "Enabling the Offline Mode makes you to access products without connected to the internet. Using this feature might consume a large storage on your device. The feature makes it unable for users to get new items on sale and also make purchases until they are connected to the internet. It also takes a little time before it takes effect.",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
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
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Enable offline mode",
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
                      value: switchValueOne,
                      onChanged: (value) {
                        debugPrint("Value --->> $value");
                        switchValueOne = value;

                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
