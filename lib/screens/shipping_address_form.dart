import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShippingAddressForm extends StatefulWidget {
  const ShippingAddressForm({Key? key}) : super(key: key);

  @override
  State<ShippingAddressForm> createState() => _ShippingAddressFormState();
}

class _ShippingAddressFormState extends State<ShippingAddressForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
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
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF6F6F6F),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    child: Text(
                      "Dolores Chambers",
                      style: TextStyle(
                        color: Color(0xFF1E1E1E),
                        fontFamily: "WorkSans",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF6F6F6F),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    child: Text(
                      "Phone Number",
                      style: TextStyle(
                        color: Color(0xFFA1A1A1),
                        fontFamily: "WorkSans",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
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
                      SizedBox(width: 8),
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
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF6F6F6F),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nigeria",
                          style: TextStyle(
                            color: Color(0xFFA1A1A1),
                            fontFamily: "WorkSans",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF6F6F6F),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "State",
                          style: TextStyle(
                            color: Color(0xFFA1A1A1),
                            fontFamily: "WorkSans",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF6F6F6F),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Local Government Area",
                          style: TextStyle(
                            color: Color(0xFFA1A1A1),
                            fontFamily: "WorkSans",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF6F6F6F),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    child: Text(
                      "Street Name",
                      style: TextStyle(
                        color: Color(0xFFA1A1A1),
                        fontFamily: "WorkSans",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF6F6F6F),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    child: Text(
                      "Zip/Postal Code",
                      style: TextStyle(
                        color: Color(0xFFA1A1A1),
                        fontFamily: "WorkSans",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFF6F6F6F),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    child: Text(
                      "Additional Information",
                      style: TextStyle(
                        color: Color(0xFFA1A1A1),
                        fontFamily: "WorkSans",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                InkWell(
                  onTap: () {},
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
                        "Save",
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
