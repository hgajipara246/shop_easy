import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({Key? key}) : super(key: key);

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
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
        title: const Text(
          "Add New Card",
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFF6F6F6F),
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "4852 2975 9554 6726",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: "WorkSans",
                            fontSize: 14,
                            color: Color(0xFF1E1E1E),
                          ),
                        ),
                        SvgPicture.asset(
                          "assets/icons/Mastercard_logo.svg",
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFF6F6F6F),
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Cardholder’s Name",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "WorkSans",
                          fontSize: 14,
                          color: Color(0xFFA1A1A1),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFF6F6F6F),
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Expiry Date",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: "WorkSans",
                            fontSize: 14,
                            color: Color(0xFFA1A1A1),
                          ),
                        ),
                        Icon(
                          Icons.calendar_today_outlined,
                          color: Color(0xFF6F6F6F),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFF6F6F6F),
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "CVC/CVV",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontFamily: "WorkSans",
                            fontSize: 14,
                            color: Color(0xFFA1A1A1),
                          ),
                        ),
                        Icon(
                          Icons.info_outline,
                          color: Color(0xFF6F6F6F),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => const ShippingAddressForm(),
                    //     ));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFA500),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: const Color(0xFFFFE4B3),
                        width: 1,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Add new card",
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
