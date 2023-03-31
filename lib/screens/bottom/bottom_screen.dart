import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_easy/screens/Fav_stores.dart';
import 'package:shop_easy/screens/cart_page.dart';
import 'package:shop_easy/screens/home_page.dart';
import 'package:shop_easy/screens/profile_page.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  final List<Widget> widgetOptions = [
    const HomePage(),
    const FavStores(),
    const CartPage(),
    const ProfilePage(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              selectedIndex == 0 ? "assets/icons/home_orange.svg" : "assets/icons/home.svg",
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              selectedIndex == 1 ? "assets/icons/fav_store_orange.svg" : "assets/icons/fav_store.svg",
            ),
            label: 'Fav Store',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              selectedIndex == 2 ? "assets/icons/cart_orange.svg" : "assets/icons/cart.svg",
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              selectedIndex == 3 ? "assets/icons/profile_orange.svg" : "assets/icons/profile.svg",
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Color(0xFFFFA500),
        unselectedItemColor: const Color(0xff999999),
        onTap: (value) {
          setState(
            () {
              selectedIndex = value;
            },
          );
        },
      ),
      body: widgetOptions.elementAt(selectedIndex),
    );
  }
}
