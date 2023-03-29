import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> like2 = [
    false,
    false,
    false,
  ];
  List categoriesImageList = [
    "assets/images/categories/men.png",
    "assets/images/categories/women.png",
    "assets/images/categories/baby.png",
    "assets/images/categories/groceries.png",
    "assets/images/categories/electronic.png",
    "assets/images/categories/beauty.png",
  ];
  List categoriesTextList = ["Men", "Women", "Baby", "Groceries", "Electronic", "Beauty"];
  List productImageList = [
    "assets/images/products/black_camera.png",
    "assets/images/products/red_lipstick.png",
    "assets/images/products/kettl.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.dehaze_rounded,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image.asset(
              "assets/icons/notifications.png",
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/backgrounds/red_background.png",
                    width: 354,
                  ),
                  Image.asset(
                    "assets/images/products/red_nike_shoes.png",
                    width: 354,
                    height: 230,
                  ),
                  Positioned(
                    top: 40,
                    left: 30,
                    child: Image.asset(
                      "assets/icons/nice_text.png",
                      width: 66,
                      height: 28,
                    ),
                  ),
                  Positioned(
                    bottom: 70,
                    right: 30,
                    child: Image.asset(
                      "assets/icons/kicks_text.png",
                      width: 66,
                      height: 28,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  border: Border.all(
                    color: Color(0xFFD3D3D3),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icons/search_icon.png",
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Groceries, Dresses, suits, etc",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Color(0xFF1E1E1E),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xFF1E1E1E),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                separatorBuilder: (context, index) => SizedBox(width: 20),
                itemBuilder: (context, index) => Row(
                  children: [
                    index == 6
                        ? Column(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF5F5F5),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.arrow_forward_outlined,
                                  size: 22,
                                ),
                              ),
                              Text(
                                "",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Color(0xFF1E1E1E),
                                ),
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              Image.asset(
                                categoriesImageList[index],
                                height: 60,
                              ),
                              SizedBox(height: 10),
                              Text(
                                categoriesTextList[index],
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Color(0xFF1E1E1E),
                                ),
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "New",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color(0xFF1E1E1E),
                  ),
                ),
              ),
            ),
            SizedBox(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  mainAxisExtent: 310,
                ),
                itemBuilder: (context, index) => index == 3
                    ? Center(
                        child: Container(
                          width: 143,
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFF1E1E1E),
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
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
                                    productImageList[index],
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
    );
  }
}
