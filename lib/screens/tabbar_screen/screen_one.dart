import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  List<bool> like2 = [false, false, false, false, false, false, false, false, false, false, false, false];
  List wishList = [
    "assets/images/products/madicine_yellow.jpg",
    "assets/images/products/madicine_three.jpg",
    "assets/images/products/nikes_white.jpg",
    "assets/images/products/nikes_red_white.jpg",
    "assets/images/products/facial_cream.jpg",
    "assets/images/products/cantu_care_for_kids.jpg",
    "assets/images/products/vodka.jpg",
    "assets/images/products/airpods_13th_genration.jpg",
    "assets/images/products/goos_skine_clube.jpg",
    "assets/images/products/microscope.jpg",
    "assets/images/products/madicine_for_tree.jpg",
    "assets/images/products/smart_watch.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 10),
          physics: const NeverScrollableScrollPhysics(),
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
      ),
    );
  }
}
