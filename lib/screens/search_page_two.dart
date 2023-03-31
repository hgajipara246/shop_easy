import 'package:flutter/material.dart';
import 'package:shop_easy/screens/search_page_three.dart';

class SearchPageTwo extends StatefulWidget {
  const SearchPageTwo({Key? key}) : super(key: key);

  @override
  State<SearchPageTwo> createState() => _SearchPageOneState();
}

class _SearchPageOneState extends State<SearchPageTwo> {
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
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
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
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "B",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Poppins",
                      color: Color(0xB21E1E1E),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 15),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SearchPageThree(),
                            ),
                          );
                        },
                        child: Text(
                          "Boots",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF1E1E1E),
                            fontFamily: "WorkSans",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Bracelets",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1E1E1E),
                          fontFamily: "WorkSans",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Bags",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1E1E1E),
                          fontFamily: "WorkSans",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Baby stuffs",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1E1E1E),
                          fontFamily: "WorkSans",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Bows",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1E1E1E),
                          fontFamily: "WorkSans",
                          fontWeight: FontWeight.w400,
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
