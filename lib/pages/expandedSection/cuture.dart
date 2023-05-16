// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/menu_page.dart';
import 'package:ricoz_app/Services/colors.dart';

import 'package:ricoz_app/pages/expandedSection/About_us.dart';
import 'package:ricoz_app/pages/expandedSection/Investor.dart';
import 'package:ricoz_app/pages/expandedSection/careers.dart';
import 'package:ricoz_app/pages/expandedSection/contact.dart';

class Culture extends StatefulWidget {
  const Culture({super.key});

  @override
  State<Culture> createState() => _CultureState();
}

class _CultureState extends State<Culture> {
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
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 800,
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xFFEBEAEA)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 630,
                        color: Color.fromARGB(255, 84, 47, 21),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return AboutUs();
                                }));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, top: 3),
                                child: Text(
                                  "About us",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Pallete.fontcolor2,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text(
                                    "Culture",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Pallete.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Container(
                                      height: 2,
                                      width: 60,
                                      color: Pallete.black),
                                )
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return InvestorsPage();
                                }));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, top: 3),
                                child: Text(
                                  "Investors",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Pallete.fontcolor2,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Careers();
                                }));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, top: 3),
                                child: Text(
                                  "Careers",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Pallete.fontcolor2,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Contact();
                                }));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 50, top: 3, right: 30),
                                child: Text(
                                  "Contact",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Pallete.fontcolor2,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 120,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        "assets/images/culture1.png",
                        width: 335,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    "assets/images/culture2.png",
                    width: 335,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Image.asset(
                        "assets/images/culture3-1.png",
                        width: 335,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/culture3.png",
                        width: 335,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            "Wanna join to our Awesome\nteam?",
                            style: TextStyle(
                                color: Pallete.whiteColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            "APPLY NOW",
                            style: TextStyle(
                                color: Pallete.whiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 19),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Icon(
                                Icons.arrow_circle_right_outlined,
                                size: 45,
                              ),
                            )),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
