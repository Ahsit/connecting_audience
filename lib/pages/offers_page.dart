// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/cart_page.dart';
import 'package:ricoz_app/pages/coupon_page.dart';
import 'package:ricoz_app/pages/home_page.dart';
import 'package:ricoz_app/pages/menu_page.dart';
import 'package:ricoz_app/pages/search_page.dart';
import 'package:ricoz_app/pages/special_offer.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Offers Zone',
          style: TextStyle(
              color: Pallete.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lora'),
        ),
      ),
      body: FadeIn(
        duration: Duration(seconds: 1),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/Offer.png',
                      width: 350,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 10),
                                child: Text(
                                  'Buy 3 Courses at 999',
                                  style: TextStyle(
                                      color: Pallete.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 19),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 5),
                                child: Text(
                                  'Great savings just a tap away!',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color:
                                          Color.fromARGB(255, 154, 154, 154)),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HotDeals(),
                                    ));
                              },
                              child: Container(
                                height: 25,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 204, 255, 206),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    'SPECIAL OFFER',
                                    style: TextStyle(
                                        color: Color.fromARGB(226, 2, 94, 5),
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'How referral work?',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Pallete.black,
                        fontSize: 16,
                        fontFamily: 'Roboto Slab'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: InkWell(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/offer1-1.png',
                                width: 100,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: Image.asset('assets/offer1-2.png'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 25, left: 13),
                                child: Image.asset('assets/offer1.png'),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: InkWell(
                          onTap: () {},
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/offer2-1.png',
                                width: 95,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 20),
                                child: Image.asset(
                                  'assets/offer2.png',
                                  width: 50,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 65, left: 23),
                                child: Image.asset(
                                  'assets/offer2-2.png',
                                  width: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Coupon(),
                                ));
                          },
                          child: Image.asset(
                            'assets/offer3.png',
                            width: 95,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Stack(
                      children: [
                        Container(
                          width: 330,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      filled: true,
                                      hintText: 'Have a Coupon?',
                                      hintStyle: TextStyle(
                                        color: Pallete.black,
                                      )),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 60),
                                child: SizedBox(
                                  height: 25,
                                  width: 90,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(40)),
                                        backgroundColor: Pallete.brown,
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'Apply',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Text(
                          'Check here',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF1533F4),
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        Text(
                          ' for the latest Coupon for great discount',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Image.asset(
                            'assets/offerbanner1.png',
                            height: 200,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Image.asset(
                            'assets/offerbanner1.png',
                            height: 200,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                      onTap: () {}, child: Image.asset('assets/refernow.png')),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Refer friend & get ₹100 Coupon',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 20),
                    child: Text(
                      '1. Invite your friends to Ricoz\n2. When your friend place an order with\n     your referral code you will get ₹100\n      coupon code\n3. You can refer maximum 10 people',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 148, 148, 148),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('TAP TO COPY THE CODE'),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: DottedBorder(
                        color: Pallete.fontcolor2,
                        strokeWidth: 2,
                        child: Center(
                          child: Text(
                            'RICOZ0918',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: 330,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Pallete.brown),
                        onPressed: () {},
                        child: Text(
                          'SHARE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                  ),
                  SizedBox(
                    height: 70,
                  )
                ],
              ),
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
                    FadeIn(
                      duration: Duration(seconds: 1),
                      child: InkWell(
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
                            child: const Image(
                                image: AssetImage('assets/searchon.jpg'),
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
                                "assets/discount2.png",
                                width: 20,
                              ),
                              // SizedBox(
                              //   width: 05,
                              // ),
                              // Padding(
                              //   padding: const EdgeInsets.only(top: 2),
                              //   child: Text("Offers",
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
                                  builder: (context) => const Cart(),
                                ));
                          },
                          child: Ink(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color.fromARGB(255, 89, 84, 84),
                            ),
                            child: const Image(
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
