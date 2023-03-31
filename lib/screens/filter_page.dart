import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<FilterPage> {
  bool radioSizeData = true;

  // Initial radio list tile Value
  String radioListSizeData = '43';
  List<String> radioListSizeItems = [
    'Popularity',
    'New',
    'Price Ascending',
    'Price Descending',
    'Rating',
  ];

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
        title: const Text(
          "Filter",
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                height: 380,
                width: double.infinity,
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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Select Size",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Color(0xFF1E1E1E),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_up,
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                      color: Color(
                        0xFFF5F5F5,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      child: SizedBox(
                        height: 255,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: radioListSizeItems.length,
                          itemBuilder: (context, index) {
                            return Transform.scale(
                              scale: 1.2,
                              child: RadioListTile(
                                activeColor: const Color(0xFFFFA500),
                                value: radioListSizeItems[index],
                                groupValue: radioListSizeData,
                                onChanged: (value) {
                                  debugPrint("value  --> $value");
                                  radioListSizeData = value!;
                                  setState(() {});
                                },
                                title: Text("${radioListSizeItems[index]}"),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
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
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Color",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(0xFF1E1E1E),
                        ),
                      ),
                      Icon(Icons.arrow_drop_down_sharp)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
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
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Size",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(0xFF1E1E1E),
                        ),
                      ),
                      Icon(Icons.arrow_drop_down_sharp)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
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
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Price",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color(0xFF1E1E1E),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Divider(
                        thickness: 2,
                        color: Color(0xFFF5F5F5),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 133,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5F5F5),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                "Min",
                                style: TextStyle(
                                  fontFamily: "WorkSans",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Color(0xFFA1A1A1),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 133,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF5F5F5),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                "Max",
                                style: TextStyle(
                                  fontFamily: "WorkSans",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: Color(0xFFA1A1A1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 152,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 3,
                        color: const Color(0xFFFFA500),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Reset",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Color(0xFFFFA500),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 152,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFA500),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 3,
                        color: const Color(0xFFFFE4B3),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Apply",
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
