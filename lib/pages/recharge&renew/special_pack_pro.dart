// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:ricoz_app/pages/menu_page.dart';
import 'package:ricoz_app/Services/colors.dart';

class SpecialPackPro extends StatefulWidget {
  const SpecialPackPro({super.key});

  @override
  State<SpecialPackPro> createState() => _SpecialPackProState();
}

class _SpecialPackProState extends State<SpecialPackPro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.brown,
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
          actions: const [
            Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.notifications,
                  size: 30,
                )),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 625,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Pallete.Container,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Recharge & renew",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF454545),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Special Pack Pro",
                    style: TextStyle(
                      color: Pallete.fontcolor2,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                      decorationThickness: 2,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 530,
                    width: 360,
                    decoration: BoxDecoration(
                        color: Color(0xFFF3E5D0),
                        boxShadow: [
                          BoxShadow(blurRadius: 2, offset: Offset(0, 1))
                        ]),
                    child: Column(
                      children: [
                        Text(
                          "\nThirty info graphic for\n\nTwo key video\n\nManagement of Two social media handl\n\nExpanding customer base\n\nIncrease follower on social pages\n\nUsing hashtags in the most effective way\n\nAssurance & peace of mind of social pages \n\nGet the push in social media for events and conference\n\nExpanding reach by joining up to Three social media groups\n\nOne specially crafted illustrator",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Pallete.whiteColor,
                                      border: Border.all(
                                          color: Pallete.brown, width: 2),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                      child: Text(
                                    "BUY NOW",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Pallete.black),
                                  )),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Pallete.brown,
                                      border: Border.all(
                                          color: Pallete.brown, width: 2),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                      child: Text(
                                    "RENEW",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Pallete.whiteColor),
                                  )),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Image.asset(
                "assets/image 1 (4).png",
                width: 120,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              "assets/ricoz2.png",
              width: 130,
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
