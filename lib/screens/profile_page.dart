import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePoseState();
}

class _ProfilePoseState extends State<ProfilePage> {
  List iconsList = [
    "assets/icons/setting.svg",
    "assets/icons/payment.svg",
    "assets/icons/shipping.svg",
    "assets/icons/wishlist.svg",
    "assets/icons/history.svg",
    "assets/icons/customer_support.svg",
    "assets/icons/help.svg",
    "assets/icons/privacy_policy.svg",
    "assets/icons/log_out.svg",
  ];
  List profilecategory = [
    "General Setting",
    "Payment Methods",
    "Shipping Address",
    "Wishlist",
    "History",
    "Customer Support",
    "Help",
    "Privacy Policy",
    "Log Out",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Profile Page",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              excludeFromSemantics: true,
              onTap: () {},
              child: Image.asset(
                "assets/icons/notifications.png",
                height: 24,
                width: 24,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: Color(0x62C2C1C1),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    "assets/images/profile_person.png",
                    height: 80,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Dolores Chambers",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                    fontSize: 15,
                    color: Color(0xFF1E1E1E),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "dolores.chambers@example.com",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        fontSize: 13,
                        color: Color(0xFF1E1E1E),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/rename_icon.svg",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Divider(
                  color: Color(0xFFD3D3D3),
                  thickness: 1,
                ),
                SizedBox(height: 20),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Row(
                    children: [
                      SvgPicture.asset(
                        iconsList[index],
                      ),
                      SizedBox(width: 15),
                      Text(
                        profilecategory[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: "WorkSans",
                          fontSize: 15,
                          color: Color(0xFF1E1E1E),
                        ),
                      ),
                    ],
                  ),
                  separatorBuilder: (context, index) => SizedBox(height: 17),
                  itemCount: 9,
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
