// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/menu_page.dart';
import 'package:ricoz_app/Services/colors.dart';

import 'package:ricoz_app/pages/expandedSection/About_us.dart';
import 'package:ricoz_app/pages/expandedSection/careers.dart';
import 'package:ricoz_app/pages/expandedSection/contact.dart';
import 'package:ricoz_app/pages/expandedSection/cuture.dart';

class InvestorsPage extends StatefulWidget {
  const InvestorsPage({super.key});

  @override
  State<InvestorsPage> createState() => _InvestorsPageState();
}

class _InvestorsPageState extends State<InvestorsPage> {
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
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Culture();
                                }));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, top: 3),
                                child: Text(
                                  "Culture",
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
                                    "Investors",
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
                                      width: 85,
                                      color: Pallete.black),
                                )
                              ],
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
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Container(
                  height: 560,
                  width: 330,
                  color: Pallete.whiteColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
