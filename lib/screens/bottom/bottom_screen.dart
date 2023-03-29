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
  final List<Widget> _widgetOptions = [
    const HomePage(),
    const FavStores(),
    const CarPage(),
    const ProfilePage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: selectedIndex == 0
                ? SvgPicture.asset(
                    "assets/icons/home_orange.svg",
                  )
                : SvgPicture.asset(
                    "assets/icons/home.svg",
                  ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 1
                ? SvgPicture.asset(
                    "assets/icons/fav_store_orange.svg",
                  )
                : SvgPicture.asset(
                    "assets/icons/fav_store.svg",
                  ),
            label: 'Fav Store',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 2
                ? SvgPicture.asset(
                    "assets/icons/cart_orange.svg",
                  )
                : SvgPicture.asset(
                    "assets/icons/cart.svg",
                  ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: selectedIndex == 3
                ? SvgPicture.asset(
                    "assets/icons/profile_orange.svg",
                  )
                : SvgPicture.asset(
                    "assets/icons/profile.svg",
                  ),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Color(0xFFFFA500),
        unselectedItemColor: const Color(0xff999999),
        onTap: _onItemTapped,
      ),
      body: _widgetOptions.elementAt(selectedIndex),
    );
  }
}
