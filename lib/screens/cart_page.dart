import 'package:flutter/material.dart';
import 'package:shop_easy/screens/product_details.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CarPageState();
}

class _CarPageState extends State<CartPage> {
  List ProductPic = ["assets/images/products/facewhas.png", "assets/images/products/pink_purce.png"];
  List ProductBlurePic = ["assets/images/backgrounds/blure_one.png", "assets/images/backgrounds/blure_two.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Cart (2)",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0xFF1E1E1E),
                    ),
                  ),
                ),
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                shrinkWrap: true,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: InkWell(
                    onTap: () {
                      if (index == 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetails(),
                          ),
                        );
                      }
                    },
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            ProductPic[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Opacity(
                            opacity: 0.8,
                            child: Image.asset(
                              ProductBlurePic[index],
                              height: 180,
                              width: 354,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 120,
                          left: 15,
                          child: Text(
                            "Product Name Product Name Product ",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 90,
                          left: 15,
                          child: Row(
                            children: [
                              Text(
                                "\$841.00",
                                style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontFamily: "Poppins",
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "\$841.00",
                                style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 60,
                          left: 15,
                          child: Row(
                            children: [
                              Text(
                                "Quantity",
                                style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "10ml",
                                style: TextStyle(
                                  color: Color(0xFF1E1E1E),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 28,
                          left: 15,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/icons/delete.png",
                                width: 20,
                                height: 20,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Remove",
                                style: TextStyle(
                                  color: Color(0xFFFF3232),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 120),
                              Container(
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Color(0x8000000),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(Icons.remove),
                              ),
                              SizedBox(width: 12),
                              Text(
                                "1",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 12),
                              Container(
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Color(0x8000000),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Icon(Icons.add),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 20,
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFFFFA500),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFFFFF),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
