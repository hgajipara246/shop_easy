import 'package:flutter/material.dart';
import 'package:shop_easy/screens/conform_email.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Image.asset(
              "assets/images/backgrounds/main_background.png",
              fit: BoxFit.fill,
              width: double.infinity,
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 800,
                width: 414,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xB0FFFFFF),
                      Color(0x41FFFFFF),
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [0.1, 0.9],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 280,
              left: 15,
              child: Container(
                height: 50,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 0.6,
                  ),
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "dolores.chambers@example.com",
                      style: TextStyle(
                        color: Color(0xFF1E1E1E),
                        fontFamily: "WorkSans",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 215,
              left: 15,
              child: Container(
                height: 50,
                width: 330,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 0.6,
                  ),
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Passcode",
                      style: TextStyle(
                        color: Color(0xFFA1A1A1),
                        fontFamily: "WorkSans",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 150,
              left: 15,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ConformEmail(),
                    ),
                  );
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
                      "Sign Up",
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
            ),
            Positioned(
              bottom: 85,
              left: 15,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFFFFF6E5),
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/google_logo.png",
                        height: 29,
                        width: 29,
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Sign Up with Google",
                        style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              left: 100,
              child: Row(
                children: [
                  const Text(
                    "A new member? ",
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 2),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Log In ",
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
            )
          ],
        ),
      ),
    );
  }
}
