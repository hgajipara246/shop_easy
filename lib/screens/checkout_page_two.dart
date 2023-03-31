import 'package:flutter/material.dart';

class CheckOutPageTwo extends StatefulWidget {
  const CheckOutPageTwo({Key? key}) : super(key: key);

  @override
  State<CheckOutPageTwo> createState() => _CheckOutTwoState();
}

class _CheckOutTwoState extends State<CheckOutPageTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const BackButton(color: Colors.black),
          title: const Text(
            "Checkout",
            style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      radius: 13,
                      backgroundColor: Color(0xFFFFA500),
                      foregroundColor: Colors.white,
                      child: Text("1"),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color(0xFFFFA500),
                        thickness: 2,
                      ),
                    ),
                    CircleAvatar(
                      radius: 13,
                      backgroundColor: Color(0xFFFFA500),
                      foregroundColor: Colors.white,
                      child: Text("2"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Stack(
                    children: [
                      Image.asset(
                        "assets/images/backgrounds/visa_payment.jpg",
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          height: 55,
                          width: 323,
                          decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(18),
                              bottomLeft: Radius.circular(18),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Dolores Chambers",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xFF1E1E1E),
                                  ),
                                ),
                                Text(
                                  "09/24",
                                  style: TextStyle(
                                    fontFamily: "WorkSans",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xFF1E1E1E),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        bottom: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              "assets/icons/visa_card_logo.png",
                            ),
                            SizedBox(height: 10),
                            Text(
                              "**** **** **** 8283",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontFamily: "Poppins",
                                fontSize: 15,
                                color: Color(0xFF1E1E1E),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                    color: Color(0xFF1E1E1E),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Card Number",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                            color: Color(0xFF1E1E1E),
                          ),
                        ),
                        Text(
                          "5153 7455 1285 8238",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            color: Color(0xFF1E1E1E),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Name",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                        ),
                        Text(
                          "Dolores Chambers",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Expiry Date",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                        ),
                        Text(
                          "07/24",
                          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "CVC/CVV",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                        ),
                        Text(
                          "284",
                          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF9B4100),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Change Card",
                      style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontWeight: FontWeight.w600, fontSize: 15),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFA500),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Proceed to Payment",
                      style: TextStyle(color: Colors.white, fontFamily: "Poppins", fontWeight: FontWeight.w600, fontSize: 15),
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
