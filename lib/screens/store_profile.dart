import 'package:flutter/material.dart';
import 'package:shop_easy/screens/shoes_section.dart';

class StoreProfile extends StatefulWidget {
  const StoreProfile({Key? key}) : super(key: key);

  @override
  State<StoreProfile> createState() => _StoreProfileState();
}

class _StoreProfileState extends State<StoreProfile> {
  List shoesImageList = [
    "assets/images/products/jorden_white.png",
    "assets/images/products/long_brown.png",
    "assets/images/products/simple_white.png",
  ];
  List maleShirtImageList = [
    "assets/images/products/male_shirt_one.png",
    "assets/images/products/male_shirt_two.png",
    "assets/images/products/male_shirt_three.png",
  ];
  List<bool> like2 = [
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Color(0xFF1E1E1E),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(50),
              excludeFromSemantics: true,
              onTap: () {},
              child: Image.asset(
                "assets/icons/silence_notification.png",
                height: 24,
                width: 24,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: const Color(0x62C2C1C1),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    "assets/images/boots_and_boots.png",
                    height: 80,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Boots & Boots",
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
                    const Text(
                      "8502 Preston Rd. Inglewood, Maine 98380",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                        fontStyle: FontStyle.italic,
                        fontSize: 13,
                        color: Color(0xFF1E1E1E),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        like2 = (like2 == true ? false : true) as List<bool>;
                        setState(() {});
                      },
                      child: Icon(
                        like2 == true ? Icons.favorite : Icons.favorite_border,
                        color: like2 == true ? const Color(0xFF9B0000) : const Color(0xff9B0000),
                        size: 23,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: Color(0xFFD3D3D3),
                  thickness: 1,
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "Shoes",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 20,
                      color: Color(0xFF1E1E1E),
                    ),
                  ),
                ),
                SizedBox(
                  child: GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 310,
                    ),
                    itemBuilder: (context, index) => index == 3
                        ? Center(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ShoesSection(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 143,
                                height: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFF1E1E1E),
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Text(
                                      "See more",
                                      style: TextStyle(
                                        color: Color(0xFF1E1E1E),
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "WorkSans",
                                        fontSize: 14,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 15,
                                      color: Color(0xFF1E1E1E),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Container(
                            width: 170,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5F5F5),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                      ),
                                      child: Image.asset(
                                        shoesImageList[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                                        child: InkWell(
                                          onTap: () {
                                            like2[index] = like2[index] == true ? false : true;
                                            setState(() {});
                                          },
                                          child: Icon(
                                            like2[index] == true ? Icons.favorite : Icons.favorite_border,
                                            color: like2[index] == true ? const Color(0xFF9B0000) : const Color(0xff9B0000),
                                            size: 23,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.star_rate_sharp,
                                            size: 20,
                                            color: Color(0xFFFFD700),
                                          ),
                                          Icon(
                                            Icons.star_rate_sharp,
                                            size: 20,
                                            color: Color(0xFFFFD700),
                                          ),
                                          Icon(
                                            Icons.star_rate_sharp,
                                            size: 20,
                                            color: Color(0xFFFFD700),
                                          ),
                                          Icon(
                                            Icons.star_rate_sharp,
                                            size: 20,
                                            color: Color(0xFFFFD700),
                                          ),
                                          Icon(
                                            Icons.star_rate_sharp,
                                            size: 20,
                                            color: Color(0xFFFFD700),
                                          ),
                                          SizedBox(width: 3),
                                          Text(
                                            "(5.0)",
                                            style: TextStyle(
                                              color: Color(0xFF1E1E1E),
                                              fontFamily: "Poppins",
                                              height: 2,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        "Product Name",
                                        style: TextStyle(
                                          color: Color(0xFF1E1E1E),
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: const [
                                          Text(
                                            "\$841.00",
                                            style: TextStyle(
                                              color: Color(0xFF1E1E1E),
                                              fontFamily: "Poppins",
                                              decoration: TextDecoration.lineThrough,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(width: 7),
                                          Text(
                                            "\$841.00",
                                            style: TextStyle(
                                              color: Color(0xFF1E1E1E),
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    "Male Shirts",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 20,
                      color: Color(0xFF1E1E1E),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  child: GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 310,
                    ),
                    itemBuilder: (context, index) => index == 3
                        ? Center(
                            child: Container(
                              width: 143,
                              height: 60,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: const Color(0xFF1E1E1E),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Text(
                                    "See more",
                                    style: TextStyle(
                                      color: Color(0xFF1E1E1E),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "WorkSans",
                                      fontSize: 14,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 15,
                                    color: Color(0xFF1E1E1E),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Container(
                            width: 170,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5F5F5),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                      ),
                                      child: Image.asset(
                                        maleShirtImageList[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                                        child: InkWell(
                                          onTap: () {
                                            like2[index] = like2[index] == true ? false : true;
                                            setState(() {});
                                          },
                                          child: Icon(
                                            like2[index] == true ? Icons.favorite : Icons.favorite_border,
                                            color: like2[index] == true ? const Color(0xFF9B0000) : const Color(0xff9B0000),
                                            size: 23,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.star_rate_sharp,
                                            size: 20,
                                            color: Color(0xFFFFD700),
                                          ),
                                          Icon(
                                            Icons.star_rate_sharp,
                                            size: 20,
                                            color: Color(0xFFFFD700),
                                          ),
                                          Icon(
                                            Icons.star_rate_sharp,
                                            size: 20,
                                            color: Color(0xFFFFD700),
                                          ),
                                          Icon(
                                            Icons.star_rate_sharp,
                                            size: 20,
                                            color: Color(0xFFFFD700),
                                          ),
                                          Icon(
                                            Icons.star_rate_sharp,
                                            size: 20,
                                            color: Color(0xFFFFD700),
                                          ),
                                          SizedBox(width: 3),
                                          Text(
                                            "(5.0)",
                                            style: TextStyle(
                                              color: Color(0xFF1E1E1E),
                                              fontFamily: "Poppins",
                                              height: 2,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        "Product Name",
                                        style: TextStyle(
                                          color: Color(0xFF1E1E1E),
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: const [
                                          Text(
                                            "\$841.00",
                                            style: TextStyle(
                                              color: Color(0xFF1E1E1E),
                                              fontFamily: "Poppins",
                                              decoration: TextDecoration.lineThrough,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 18,
                                            ),
                                          ),
                                          SizedBox(width: 7),
                                          Text(
                                            "\$841.00",
                                            style: TextStyle(
                                              color: Color(0xFF1E1E1E),
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
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
      ),
    );
  }
}
