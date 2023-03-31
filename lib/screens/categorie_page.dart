import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  List ProductImage = [
    "assets/images/categories/shoes__.png",
    "assets/images/categories/electronics.png",
    "assets/images/categories/baby.png",
    "assets/images/categories/suits.png",
    "assets/images/categories/others.png",
    "assets/images/categories/dresses.png",
    "assets/images/categories/socks.png",
    "assets/images/categories/pillows.png",
    "assets/images/categories/jwellery.png",
    "assets/images/categories/hats.png",
    "assets/images/categories/undershirts.png",
    "assets/images/categories/earrings.png",
    "assets/images/categories/shorts.png",
    "assets/images/categories/beauty.png",
    "assets/images/categories/flat sheets.png",
    "assets/images/categories/bootss.png",
    "assets/images/categories/glovers.png",
    "assets/images/categories/slipper.png",
  ];
  List produtsName = [
    "Shoes",
    "Electronic",
    "Baby",
    "Suits",
    "OTHERS",
    "Dresses",
    "Socks",
    "Pillows",
    "Jewelry",
    "Hats",
    "Undershirts",
    "Earrings",
    "Shorts",
    "Beauty",
    "Beauty",
    "Boots",
    "Gloves",
    "Slippers",
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
          "Categories",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: "Poppins",
            fontSize: 20,
            color: Color(0xFF1E1E1E),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 18,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisExtent: 120),
              itemBuilder: (context, index) => Column(
                children: [
                  Image.asset(
                    ProductImage[index],
                    width: 60,
                    height: 60,
                  ),
                  SizedBox(height: 10),
                  Text(
                    produtsName[index],
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      fontSize: 14,
                      color: Color(0xFF1E1E1E),
                    ),
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
