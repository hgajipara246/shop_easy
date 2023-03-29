import 'package:flutter/material.dart';
import 'package:shop_easy/screens/conform_email.dart';
import 'package:shop_easy/screens/sign_up.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/backgrounds/main_background.png",
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 800,
                  width: 414,
                  decoration: BoxDecoration(
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
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                      color: Color(0xFFFFA500),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Color(0xFFFFE4B3),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Log in",
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
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFFFF6E5),
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
                        SizedBox(width: 5),
                        Text(
                          "Log In with Google",
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
                    Text(
                      "A new member? ",
                      style: TextStyle(
                        color: Color(0xFF1E1E1E),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 2),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
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
      ),
    );
  }
}
