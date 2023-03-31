import 'package:flutter/material.dart';

class SearchPageThree extends StatefulWidget {
  const SearchPageThree({Key? key}) : super(key: key);

  @override
  State<SearchPageThree> createState() => _WishListPageState();
}

class _WishListPageState extends State<SearchPageThree> {
  List<bool> like2 = [false, false, false, false, false, false, false, false, false, false, false, false];
  List wishList = [
    "assets/images/products/boot 1.png",
    "assets/images/products/boot 2.png",
    "assets/images/products/boot 3.png",
    "assets/images/products/boot 4.png",
    "assets/images/products/boot 5.png",
    "assets/images/products/boot 6.png",
    "assets/images/products/boot 7.png",
    "assets/images/products/boot 8.png",
    "assets/images/products/boot 9.png",
    "assets/images/products/boot 10.png",
    "assets/images/products/boot 11.png",
    "assets/images/products/boot 12.png",
  ];
  List storeImages = [
    "assets/images/boot_and_boot.png",
    "assets/images/karen's_boot.png",
    "assets/images/Booty.png",
    "assets/images/Boot Fountsain.png",
    "assets/images/All Boots.png",
  ];
  List storeName = [
    "Boots & Boots",
    "Karen’s Boots",
    "Booty",
    "Boot Fountsain",
    "All Boots",
  ];
  List storeAddress = [
    "8502 Preston Rd. Inglewood, Maine 98380",
    "3517 W. Gray St. Utica, Pennsylvania 57867",
    "3891 Ranchview Dr. Richardson, California 62639",
    "2464 Royal Ln. Mesa, New Jersey 45463",
    "1901 Thornridge Cir. Shiloh, Hawaii 81063",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(
                Icons.filter_alt_outlined,
                color: Color(0xFF1E1E1E),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color(0xFFD3D3D3),
                    width: 2,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Text(
                    "Boots",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Poppins",
                      color: Color(0xB21E1E1E),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
                labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 14,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF1E1E1E),
                ),
                indicatorColor: const Color(0xFFFFA500),
                indicatorWeight: 2,
                indicatorSize: TabBarIndicatorSize.tab,
                padding: EdgeInsets.zero,
                isScrollable: false,
                overlayColor: MaterialStateProperty.all(const Color(0xFFE8E2E8)),
                splashBorderRadius: BorderRadius.circular(10),
                tabs: const [
                  Tab(text: "Products"),
                  Tab(text: "Stores"),
                ],
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        GridView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 12,
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
                                        wishList[index],
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
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            ListView.separated(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) => Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                          padding: const EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                storeImages[index],
                                                height: 50,
                                              ),
                                              SizedBox(width: 15),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    storeName[index],
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 14,
                                                      color: Color(0xFF1E1E1E),
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    storeAddress[index],
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 13,
                                                      color: Color(0xFF1E1E1E),
                                                      fontStyle: FontStyle.italic,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                separatorBuilder: (context, index) => SizedBox(height: 10),
                                itemCount: 5),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
