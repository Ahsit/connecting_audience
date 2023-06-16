// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/Notification_page.dart';
import 'package:ricoz_app/pages/cart_page.dart';
import 'package:ricoz_app/pages/home_page.dart';
import 'package:ricoz_app/pages/menu_page.dart';
import 'package:ricoz_app/pages/offers_page.dart';
import 'package:ricoz_app/Screen/courses/services_final/ads_management.dart';
import 'package:ricoz_app/Screen/courses/services_final/ads_manager.dart';
import 'package:ricoz_app/Screen/courses/services_final/digital_marketing.dart';
import 'package:ricoz_app/Screen/courses/services_final/google_adwords.dart';
import 'package:ricoz_app/Screen/courses/services_final/graphic_design.dart';
import 'package:ricoz_app/Screen/courses/services_final/shopify_development.dart';
import 'package:ricoz_app/Screen/courses/services_final/socialmedia.dart';
import 'package:ricoz_app/Screen/courses/services_final/website_development.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
      body: FadeIn(
        duration: Duration(seconds: 1),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomePage(),
                                ));
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Pallete.whiteColor,
                            size: 25,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Pallete.whiteColor,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(width: 1)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                        color: Pallete.black, width: 2)),
                                labelStyle: TextStyle(color: Pallete.black),
                                hintText: 'Search....',
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: 30,
                                )),
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 26),
                Center(
                  child: Container(
                    height: 270,
                    width: 360,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(9)),
                        color: Color.fromRGBO(255, 217, 218, 1)),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0, left: 15),
                          child: Row(
                            children: const [
                              Text('Popular Services',
                                  style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildCircleImage(
                              'Social Media\nManagement',
                              'assets/image 158.png',
                              (() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ServiceSMM(),
                                  ),
                                );
                              }),
                            ),
                            _buildCircleImage(
                                ' Google\nAdwords', 'assets/image 181.png',
                                (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ServiceGoogleAds(),
                                  ));
                            })),
                            _buildCircleImage(
                                'Graphics\n  Design', 'assets/image 160.png',
                                (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ServiceGraphic(),
                                  ));
                            })),
                            _buildCircleImage('        Ads\nManagement',
                                'assets/image 161.png', (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ServiceAdsManage(),
                                  ));
                            })),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildCircleImage(
                                '   Ads\nManager', 'assets/image 165.png', (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ServiceAdsManager(),
                                  ));
                            })),
                            _buildCircleImage('    Website\nDevelopment',
                                'assets/image 166.png', (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ServiceWebDev(),
                                  ));
                            })),
                            _buildCircleImage(
                                '   Digital\nMarketing', 'assets/image 168.png',
                                (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ServiceDigital(),
                                  ));
                            })),
                            _buildCircleImage('    Shopify\nDevelopment',
                                'assets/image 170.png', (() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const ServiceShopify(),
                                  ));
                            })),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FadeIn(
                      duration: Duration(seconds: 1),
                      child: InkWell(
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
                            child: const Image(
                                image: AssetImage('assets/homeimg.jpg'),
                                width: 20,
                                height: 20),
                          )),
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: FadeIn(
                        duration: Duration(seconds: 1),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.transparent,
                              backgroundColor:
                                  Color.fromARGB(174, 235, 235, 235),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          onPressed: () {},
                          child: Wrap(
                            children: <Widget>[
                              Image.asset(
                                "assets/searchon2.png",
                                //width: 20,
                              ),
                              // SizedBox(
                              //   width: 05,
                              // ),
                              // Padding(
                              //   padding: const EdgeInsets.only(top: 2),
                              //   child: Text("Search",
                              //       style: TextStyle(
                              //           fontSize: 16,
                              //           color: Colors.black,
                              //           fontWeight: FontWeight.w400)),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FadeIn(
                      duration: Duration(seconds: 1),
                      child: InkWell(
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
                            child: const Image(
                                image: AssetImage('assets/discount.png'),
                                width: 20,
                                height: 20),
                          )),
                    ),
                    FadeIn(
                      duration: Duration(seconds: 1),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Cart(),
                                ));
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color.fromARGB(255, 89, 84, 84),
                            ),
                            child: Image(
                                image: AssetImage('assets/cart.png'),
                                width: 20,
                                height: 20),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildCircleImage(String label, String img, VoidCallback press) {
  return Column(
    children: [
      GestureDetector(
        onTap: press,
        child: Container(
          width: 53,
          height: 53,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color.fromRGBO(68, 1, 1, 1),
              width: 2,
            ),
          ),
          child: Center(
            child: Image.asset(
              img,
              width: 60,
              height: 60,
            ),
          ),
        ),
      ),
      SizedBox(height: 10),
      Align(
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(126, 125, 125, 1),
          ),
        ),
      ),
    ],
  );
}
