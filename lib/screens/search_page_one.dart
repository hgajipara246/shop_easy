import 'package:flutter/material.dart';
import 'package:shop_easy/screens/search_page_two.dart';

class SearchPageOne extends StatefulWidget {
  const SearchPageOne({Key? key}) : super(key: key);

  @override
  State<SearchPageOne> createState() => _SearchPageOneState();
}

class _SearchPageOneState extends State<SearchPageOne> {
  TextEditingController searchController = TextEditingController();

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
              // InkWell(
              //   onTap: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => const SearchPageTwo(),
              //       ),
              //     );
              //   },
              //   child: Container(
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       color: Color(0xFFF5F5F5),
              //       borderRadius: BorderRadius.circular(30),
              //       border: Border.all(
              //         color: Color(0xFFD3D3D3),
              //         width: 2,
              //         style: BorderStyle.solid,
              //       ),
              //     ),
              //     child: Padding(
              //       padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              //       child: Text(
              //         "|",
              //         style: TextStyle(
              //           fontSize: 35,
              //           color: Color(0xB21E1E1E),
              //           fontWeight: FontWeight.w100,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              Container(
                height: 50,
                child: TextFormField(
                  cursorHeight: 20,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchPageTwo(),
                      ),
                    );
                    setState(() {});
                  },
                  controller: searchController,
                  autocorrect: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0x35A9A9A9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xFFD3D3D3), width: 1, style: BorderStyle.solid),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xFFD3D3D3), width: 1, style: BorderStyle.solid),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Color(0xFFD3D3D3), width: 1, style: BorderStyle.solid),
                    ),

                    // Container(
                    //   height: 50,
                    //   decoration: BoxDecoration(
                    //     color: Color(0xFFF5F5F5),
                    //     border: Border.all(
                    //       color: Color(0xFFD3D3D3),
                    //       width: 1,
                    //     ),
                    //     borderRadius: BorderRadius.circular(30),
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    //     child: Row(
                    //       children: [
                    //         Image.asset(
                    //           "assets/icons/search_icon.png",
                    //           height: 20,
                    //           width: 20,
                    //         ),
                    //         SizedBox(width: 10),
                    //         Text(
                    //           "Groceries, Dresses, suits, etc",
                    //           style: TextStyle(
                    //             fontFamily: "Poppins",
                    //             fontWeight: FontWeight.w400,
                    //             fontSize: 13,
                    //             color: Color(0xFF1E1E1E),
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.history_outlined,
                      color: Color(0xFFA1A1A1),
                      size: 24,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Boots",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFA1A1A1),
                        fontFamily: "WorkSans",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.north_east,
                      color: Color(0xFFA1A1A1),
                      size: 22,
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.history_outlined,
                      color: Color(0xFFA1A1A1),
                      size: 24,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Boots",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFA1A1A1),
                        fontFamily: "WorkSans",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.north_east,
                      color: Color(0xFFA1A1A1),
                      size: 22,
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.history_outlined,
                      color: Color(0xFFA1A1A1),
                      size: 24,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Boots",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFA1A1A1),
                        fontFamily: "WorkSans",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.north_east,
                      color: Color(0xFFA1A1A1),
                      size: 22,
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.history_outlined,
                      color: Color(0xFFA1A1A1),
                      size: 24,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Boots",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFA1A1A1),
                        fontFamily: "WorkSans",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.north_east,
                      color: Color(0xFFA1A1A1),
                      size: 22,
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.history_outlined,
                      color: Color(0xFFA1A1A1),
                      size: 24,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Boots",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFA1A1A1),
                        fontFamily: "WorkSans",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.north_east,
                      color: Color(0xFFA1A1A1),
                      size: 22,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
