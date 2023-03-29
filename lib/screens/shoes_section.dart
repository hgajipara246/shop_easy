import 'package:flutter/material.dart';

class ShoesSection extends StatefulWidget {
  const ShoesSection({Key? key}) : super(key: key);

  @override
  State<ShoesSection> createState() => _ShoesSectionState();
}

class _ShoesSectionState extends State<ShoesSection> {
  List<bool> like2 = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List product = [
    "assets/images/products/jorden_white.png",
    "assets/images/products/long_brown.png",
    "assets/images/products/simple_white.png",
    "assets/images/products/nike_white.png",
    "assets/images/products/nike_black.png",
    "assets/images/products/nike_colorfull.png",
    "assets/images/products/nike_red_white.png",
    "assets/images/products/long_brown_two.png",
    "assets/images/products/nike_black_white_red.png",
    "assets/images/products/ladies_black.png",
    "assets/images/products/bike_lightblue_black.png",
    "assets/images/products/nike_black_white_two.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Shoes",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontFamily: "Poppins",
            fontSize: 20,
            color: Color(0xFF1E1E1E),
          ),
        ),
        centerTitle: true,
        leading: BackButton(
          color: Color(0xFF1E1E1E),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 12,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      mainAxisExtent: 300,
                      childAspectRatio: 1.5,
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
                                  product[index],
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
              ),
            ],
          ),
        ),
      )),
    );
  }
}
