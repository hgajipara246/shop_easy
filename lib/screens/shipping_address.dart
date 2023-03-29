import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_easy/screens/shipping_address_form.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Color(0xFF1E1E1E),
        ),
        title: Text(
          "Shipping Address",
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
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/profile_orange.svg",
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Personal Details",
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontFamily: "WorkSans",
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
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
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(
                                color: Color(0xFFA1A1A1),
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Dolores Chambers",
                              style: TextStyle(
                                color: Color(0xFF1E1E1E),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Phone Number",
                              style: TextStyle(
                                color: Color(0xFFA1A1A1),
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "+234 255 5594 546",
                              style: TextStyle(
                                color: Color(0xFF1E1E1E),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/location.svg",
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Address",
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontFamily: "WorkSans",
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
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
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Country",
                              style: TextStyle(
                                color: Color(0xFFA1A1A1),
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Nigeria",
                              style: TextStyle(
                                color: Color(0xFF1E1E1E),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "State",
                              style: TextStyle(
                                color: Color(0xFFA1A1A1),
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Ogun",
                              style: TextStyle(
                                color: Color(0xFF1E1E1E),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "LGA",
                              style: TextStyle(
                                color: Color(0xFFA1A1A1),
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Egbado South",
                              style: TextStyle(
                                color: Color(0xFF1E1E1E),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Street Name",
                              style: TextStyle(
                                color: Color(0xFFA1A1A1),
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Lorem Ipsum",
                              style: TextStyle(
                                color: Color(0xFF1E1E1E),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Zip/Postal Code",
                              style: TextStyle(
                                color: Color(0xFFA1A1A1),
                                fontFamily: "WorkSans",
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "100001",
                              style: TextStyle(
                                color: Color(0xFF1E1E1E),
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 110),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ShippingAddressForm(),
                        ));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFA500),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xFFFFE4B3),
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Edit",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
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
