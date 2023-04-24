import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shop_easy/extantion/extantion.dart';
import 'package:shop_easy/screens/conform_email.dart';
import 'package:shop_easy/screens/sign_up.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<LogInPage> {
  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool password = true;

  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/backgrounds/main_background.png"),
              fit: BoxFit.fill,
            ),
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
              child: Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      // color: Colors.red,
                    ),
                    TextFormField(
                      validator: (value) => value!.isValidEmail() ? null : "Please Enter Correct E-mail",
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Email",
                        focusColor: Colors.black38,
                        filled: true,
                        // prefixIcon: const Icon(Icons.email, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: Colors.yellow),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        fillColor: const Color(0x35A9A9A9),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      validator: (value) => value!.isValidPassword() ? null : "Please Enter Correct Password",
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: "Password",
                        focusColor: Colors.black38,
                        filled: true,
                        // prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: Colors.yellow),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                        fillColor: const Color(0x35A9A9A9),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConformEmail(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFA500),
                          border: Border.all(
                            width: 1,
                            color: const Color(0xFFFFE4B3),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: 350,
                        height: 50,
                        child: const Center(
                          child: Text(
                            "Log in",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: 350,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/google_logo.png",
                            height: 30,
                          ),
                          const Text(
                            " Log In with Google",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInPage(),
                          ),
                        );
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "A new member? ",
                          style: const TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12,
                            color: Color(0xFF1E1E1E),
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                              text: "Sign Up",
                              style: const TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 12,
                                color: Color(0xFFCD7300),
                                fontWeight: FontWeight.w400,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
