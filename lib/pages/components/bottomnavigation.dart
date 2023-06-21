import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/cart_page.dart';
import 'package:ricoz_app/pages/coupon_page.dart';
import 'package:ricoz_app/pages/home_page.dart';
import 'package:ricoz_app/pages/search_page.dart';

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      bottomNavigationBar: CurvedNavigationBar(
        color: Pallete.whiteColor,
        index: index,
        buttonBackgroundColor: Pallete.whiteColor,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.linear,
        height: 50,
        // onTap: (index) => setState(() => this.index = index),
        items: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            child: const Icon(
              Icons.home,
              color: Colors.black,
              size: 30,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPage(),
                  ));
            },
            child: const Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Coupon(),
                  ));
            },
            child: const Icon(
              Icons.local_offer,
              color: Colors.black,
              size: 30,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Cart(),
                  ));
            },
            child: const Icon(
              Icons.trolley,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
