import 'package:flutter/material.dart';
import 'package:shop_easy/screens/store_profile.dart';

class FavStores extends StatefulWidget {
  const FavStores({Key? key}) : super(key: key);

  @override
  State<FavStores> createState() => _ScreenElevenState();
}

class _ScreenElevenState extends State<FavStores> {
  List<bool> like2 = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List image = [
    "assets/images/backgrounds/store_name_one.png",
    "assets/images/backgrounds/store_name_two.png",
    "assets/images/backgrounds/store_name_three.png",
    "assets/images/backgrounds/store_name_four.png",
  ];
  List product = [
    "assets/images/products/airbuds.png",
    "assets/images/products/red_combo.png",
    "assets/images/products/ipad.png",
    "assets/images/products/perfume_combo.png",
    "assets/images/products/blue_watch.png",
    "assets/images/products/blue_perfume.png",
    "assets/images/products/madicine.png",
    "assets/images/products/light_pink_combo.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Image.asset(
              "assets/icons/notifications.png",
              height: 25,
              width: 25,
            ),
          )
        ],
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Favourite Stores",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: SizedBox(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 48,
                      childAspectRatio: 1.5,
                    ),
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StoreProfile(),
                          ),
                        );
                      },
                      child: Container(
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Stack(
                          children: [
                            Image.asset(
                              image[index],
                              fit: BoxFit.cover,
                            ),
                            const Center(
                              child: Text(
                                "Store Name",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product across favourite stores",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 8,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      mainAxisExtent: 295,
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
      ),
    );
  }
}
