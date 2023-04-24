import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  List languageList = [
    "Afrikaans",
    "Arabic",
    "Belarusian",
    "Bulgarian",
    "Chinese (Simplified)",
    "Croatian",
    "Danish",
    "English",
    "Estonian",
    "Filipino",
    "French",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(color: Colors.black,),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Language",
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
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFF6F6F6F),
                    ),
                    borderRadius: BorderRadius.circular(5)),
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "English",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                      fontSize: 14,
                      color: Color(0xFF1E1E1E),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
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
                child: ListView.separated(
                  padding: const EdgeInsets.all(20),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => index == 7
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Text("English"),
                            ),
                            Icon(
                              Icons.done_outlined,
                              color: Color(0xFFFFA500),
                            )
                          ],
                        )
                      : Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text(languageList[index]),
                            )
                          ],
                        ),
                  separatorBuilder: (context, index) => const Divider(
                    color: Color(0xFFF5F5F5),
                    thickness: 1,
                    indent: 15,
                  ),
                  itemCount: 11,
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
