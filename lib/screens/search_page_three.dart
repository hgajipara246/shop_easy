import 'package:flutter/material.dart';
import 'package:shop_easy/screens/tabbar_screen/screen_one.dart';

class SearchPageThree extends StatefulWidget {
  const SearchPageThree({Key? key}) : super(key: key);

  @override
  State<SearchPageThree> createState() => _WishListPageState();
}

class _WishListPageState extends State<SearchPageThree> {
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
          "Wishlist",
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
        child: DefaultTabController(
          length: 2,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                      child: Text(
                        "Boot",
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
                SizedBox(height: 10),
                TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  labelStyle: const TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  ),
                  labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400,
                  ),
                  indicatorColor: const Color(0xFFFFA500),
                  // indicatorPadding: EdgeInsets.all(0),
                  indicatorSize: TabBarIndicatorSize.tab,

                  overlayColor: MaterialStateProperty.all(const Color(0xFFFFA500)),
                  splashBorderRadius: BorderRadius.circular(10),
                  physics: NeverScrollableScrollPhysics(),

                  tabs: [
                    Tab(
                      text: "Products",
                    ),
                    Tab(
                      text: "Stores",
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ScreenOne(),
                      ScreenOne(),
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
