// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ricoz_app/Services/colors.dart';

class HotDeals extends StatelessWidget {
  const HotDeals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Hot Deals',
          style: TextStyle(
              color: Pallete.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lora'),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset('assets/hotdeals1.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90, left: 120),
              child: Text(
                'LIMITED OFFER!',
                style: TextStyle(
                    color: Pallete.whiteColor,
                    fontFamily: 'Rowdies',
                    fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160, left: 15),
              child: Container(
                width: 345,
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Box.png'),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Image.asset(
                        'assets/percent.png',
                        width: 70,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                          ),
                          child: Text(
                            'Buy 3 Course at  ₹999',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/dots.png',
                            width: 200,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Buy any 3 Courses at an\namazing Price of 999.\nThis will include videos and\nwritten content',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 340, left: 17),
              child: Container(
                width: 345,
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Box.png'),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Image.asset(
                        'assets/percent.png',
                        width: 70,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                          ),
                          child: Text(
                            'Buy 3 Course at  ₹999',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/dots.png',
                            width: 200,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Buy any 3 Courses at an\namazing Price of 999.\nThis will include videos and\nwritten content',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Colors.black),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 520, left: 17),
              child: Container(
                width: 345,
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Box.png'),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Image.asset(
                        'assets/percent.png',
                        width: 70,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                          ),
                          child: Text(
                            'Buy 3 Course at  ₹999',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/dots.png',
                            width: 200,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Buy any 3 Courses at an\namazing Price of 999.\nThis will include videos and\nwritten content',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
