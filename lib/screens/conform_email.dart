import 'package:flutter/material.dart';
import 'package:shop_easy/screens/bottom/bottom_screen.dart';

class ConformEmail extends StatefulWidget {
  const ConformEmail({Key? key}) : super(key: key);

  @override
  State<ConformEmail> createState() => _ConformEmailState();
}

class _ConformEmailState extends State<ConformEmail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 130),
              const Center(
                child: Text(
                  "Confirm Email",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 21,
                    color: Color(0xFF1E1E1E),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Image.asset(
                "assets/icons/conform_mail.png",
                width: 240,
                height: 260,
              ),
              const SizedBox(height: 25),
              const Text(
                "A link has been sent to",
                style: TextStyle(
                  fontFamily: "WorkSans",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF1E1E1E),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "dolores.chambers@example.com.",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Color(0xFF1E1E1E),
                ),
              ),
              const Text(
                "Click on the link to verify your email",
                style: TextStyle(
                  fontFamily: "WorkSans",
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Color(0xFF1E1E1E),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomScreen(),
                      ),
                      (route) => false);
                },
                child: Container(
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFA500),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      style: BorderStyle.solid,
                      color: const Color(0xFFFFE4B3),
                    ),
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const InkWell(
                child: Text(
                  "Resend Email",
                  style: TextStyle(
                    color: Color(0xFFCD7300),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
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
