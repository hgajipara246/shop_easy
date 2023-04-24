import 'package:flutter/material.dart';
import 'package:shop_easy/screens/selection_page.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
                "assets/icons/notifications.png",
                height: 24,
                width: 24,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 15),
              Image.asset(
                "assets/images/brown_leather_boots.png",
              ),
              const SizedBox(height: 20),
              const Text(
                "Lörem ipsum derertad rejase inte homoling prel syjetägt sen lados Ladies Boot.",
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Text(
                    "\$841.00",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough,
                      color: Color(0xFF1E1E1E),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "\$841.00",
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 21,
                      color: Color(0xFF1E1E1E),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                "Today’s Fortune 500 list rolls over faster than ever. Today, only 12 percent of the companies that made the list in 1955 still remain.",
                style: TextStyle(
                  fontFamily: "WorkSans",
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF1E1E1E),
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.star_rate,
                        color: Color(0xFFFFD700),
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Color(0xFFFFD700),
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Color(0xFFFFD700),
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Color(0xFFD3D3D3),
                      ),
                      Icon(
                        Icons.star_rate,
                        color: Color(0xFFD3D3D3),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    "3.0",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF1E1E1E),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              InkWell(
                onTap: () {
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectionPage(),
                      ),
                    );
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFA500),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color(0xFFFFE4B3),
                      width: 1,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xFF9B4100),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: const Color(0xFFFFE4B3),
                    width: 1,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Add to Wishlist",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Text(
                    "Reviews",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xFF1E1E1E),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Color(0xFF1E1E1E),
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF1E1E1E),
                    size: 20,
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
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
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Marci Senter",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.star_rate,
                            color: Color(0xFFFFD700),
                            size: 20,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color(0xFFFFD700),
                            size: 20,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color(0xFFFFD700),
                            size: 20,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color(0xFFD3D3D3),
                            size: 20,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color(0xFFD3D3D3),
                            size: 20,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "It is difficult to trust anyone again after dealing with obstructive tenants. We contacted Morag from The Good Estate Agents, after being recommended to her by a colleague. Due to her understanding and professionalism the property was relet within a few days. Her service was outstanding, you could say five stars!",
                        style: TextStyle(
                          fontFamily: "WorkSans",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF1E1E1E),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
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
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Cameron Williamson",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.star_rate,
                            color: Color(0xFFFFD700),
                            size: 20,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color(0xFFFFD700),
                            size: 20,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color(0xFFFFD700),
                            size: 20,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color(0xFFD3D3D3),
                            size: 20,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color(0xFFD3D3D3),
                            size: 20,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Simply the best templates that I have bought so far. Super clean code, intuitive documentations, and most important of all the best design.",
                        style: TextStyle(
                          fontFamily: "WorkSans",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF1E1E1E),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/products/boot 12.png",
                          height: 254,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
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
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Jacob Jones",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.star_rate,
                            color: Color(0xFFFFD700),
                            size: 20,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color(0xFFFFD700),
                            size: 20,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color(0xFFFFD700),
                            size: 20,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color(0xFFD3D3D3),
                            size: 20,
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Color(0xFFD3D3D3),
                            size: 20,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        "Actually, I can't limit myself to just one option and that's why I've put  'Other' : great theme, thousands of possibilities, great technical support (fast, efficient and polite), etc.",
                        style: TextStyle(
                          fontFamily: "WorkSans",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF1E1E1E),
                        ),
                      ),
                    ],
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
