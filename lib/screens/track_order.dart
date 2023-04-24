import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_easy/screens/product_details.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  List<String> data = [
    "Ready to Pickup\n04-02-2020 17:30",
    "Order Processed\n02-02-2020 09:30",
    "Order Placed\n28-01-2020 11:30",
    "Order Confirmed\n12-02-2020 08:00",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
        title: Text(
          "Track Order",
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
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetails(),
                        ),
                      );
                    }
                  },
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.asset(
                        'assets/images/backgrounds/red shoes.png',
                      ),
                      Container(
                        height: 61,
                        width: 354,
                        decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff1E1E1E),
                                Color(0x33ffffff),
                              ],
                            ),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            color: Color(0x1affffff)),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: const [
                              Text(
                                "Order ID:",
                                style: TextStyle(
                                  color: Color(0xff1E1E1E),
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "   11AR-F841",
                                style: TextStyle(
                                  color: Color(0xff1E1E1E),
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\$841.00",
                                style: TextStyle(
                                  color: Color(0xff1E1E1E),
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ListView.separated(
                  itemCount: data.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 80,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(5),
                    color: index == 1 || index == 2 ? const Color(0xffA1A1A1) : const Color(0xff003A00),
                    child: Text(
                      data[index],
                      style: TextStyle(
                        color: index == 1 || index == 2 ? const Color(0xffA1A1A1) : const Color(0xff1E1E1E),
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x6000000),
                        offset: Offset(0, 3),
                        blurRadius: 15,
                      ),
                    ],
                    border: Border.all(
                      color: Color(0xFFF5F5F5),
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/icons/home_orange.svg"),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Delivery Address",
                              style: TextStyle(
                                color: Color(0xff1E1E1E),
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "4517 Washington Ave. Manchester, Kentucky\n39495",
                              style: TextStyle(
                                color: Color(0xff1E1E1E),
                                fontFamily: "Poppins",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x15000000),
                        offset: Offset(0, 3),
                        blurRadius: 15,
                      ),
                    ],
                    border: Border.all(
                      color: Color(0xFFF5F5F5),
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/icons/star.svg"),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Write a Review",
                              style: TextStyle(
                                color: Color(0xffA1A1A1),
                                fontFamily: "Poppins",
                                fontSize: 14,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Write a review to the store",
                              style: TextStyle(
                                color: Color(0xffA1A1A1),
                                fontFamily: "Poppins",
                                fontSize: 12,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                              ),
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
    );
  }
}
