import 'package:flutter/material.dart';
import 'package:shop_easy/screens/track_order.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  List februaryproductImageList = [
    "assets/images/products/titan_watch.png",
    "assets/images/products/coco_women_perfume.jpg",
  ];
  List januaryproductImageList = [
    "assets/images/products/pantene_pride.jpg",
    "assets/images/products/iphone_13_cover.jpg",
    "assets/images/products/chanel_bag.jpg",
  ];
  List novemberproductImageList = [
    "assets/images/products/cloth_paire.jpg",
    "assets/images/products/nescafe_coffee.jpg",
    "assets/images/products/madicine_two.jpg",
  ];
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
          "Order History",
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "February",
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    mainAxisExtent: 310,
                  ),
                  itemBuilder: (context, index) => Container(
                    width: 170,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TrackOrder(),
                                ),
                              );
                            }
                          },
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  topLeft: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  februaryproductImageList[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
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
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "January",
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    mainAxisExtent: 310,
                  ),
                  itemBuilder: (context, index) => Container(
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
                                januaryproductImageList[index],
                                fit: BoxFit.cover,
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color(0xFFD3D3D3),
                        thickness: 1,
                        endIndent: 10,
                        indent: 10,
                      ),
                    ),
                    Text(
                      "2022",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFD3D3D3),
                        fontSize: 12,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color(0xFFD3D3D3),
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "November",
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    mainAxisExtent: 310,
                  ),
                  itemBuilder: (context, index) => Container(
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
                                novemberproductImageList[index],
                                fit: BoxFit.cover,
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color(0xFFD3D3D3),
                        thickness: 1,
                        endIndent: 10,
                        indent: 10,
                      ),
                    ),
                    Text(
                      "2021",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFD3D3D3),
                        fontSize: 12,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Color(0xFFD3D3D3),
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
