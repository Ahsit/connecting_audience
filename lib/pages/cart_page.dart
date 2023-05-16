// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/Notification_page.dart';

import 'package:ricoz_app/pages/home_page.dart';
import 'package:ricoz_app/pages/menu_page.dart';
import 'package:ricoz_app/pages/offers_page.dart';
import 'package:ricoz_app/pages/search_page.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(68, 1, 1, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(68, 1, 1, 1),
        automaticallyImplyLeading: false,
        title: const Image(
            image: AssetImage('assets/image 1 (4).png'),
            width: 110,
            height: 50),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MenuPage(),
                ));
          },
          child: const Image(
            image: AssetImage('assets/image 125 (4).png'),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Notifications(),
                    ));
              },
              icon: Icon(
                Icons.notifications,
                size: 30,
              ))
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ));
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(255, 89, 84, 84),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: const Image(
                              image: AssetImage('assets/homeimg.jpg'),
                              width: 20,
                              height: 20),
                        ),
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SearchPage(),
                            ));
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: const Image(
                              image: AssetImage('assets/searchon.jpg'),
                              width: 20,
                              height: 20),
                        ),
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Offers(),
                            ));
                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(255, 89, 84, 84),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: const Image(
                              image: AssetImage('assets/discount.png'),
                              width: 20,
                              height: 20),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: SizedBox(
                      height: 35,
                      width: 105,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            backgroundColor: Color.fromARGB(174, 235, 235, 235),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {},
                        child: Wrap(
                          children: <Widget>[
                            Image.asset(
                              "assets/cart2.png",
                              width: 20,
                            ),
                            SizedBox(
                              width: 05,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: Text("Orders",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
