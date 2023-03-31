import 'package:flutter/material.dart';

class ReviewsPage extends StatefulWidget {
  const ReviewsPage({Key? key}) : super(key: key);

  @override
  State<ReviewsPage> createState() => _ReviewsPageState();
}

class _ReviewsPageState extends State<ReviewsPage> {
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
          "Reviews",
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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x15000000),
                      offset: Offset(0, 3),
                      blurRadius: 10,
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
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.chevron_left_outlined,
                        size: 30,
                        color: Color(0xFFFFA500),
                      ),
                    ),
                  ),
                  Text(
                    "1/100",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Color(0xFF1E1E1E),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.chevron_right_outlined,
                        size: 30,
                        color: Color(0xFFFFA500),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
