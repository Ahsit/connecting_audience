// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/menu_page.dart';
import 'package:ricoz_app/Services/colors.dart';

import 'package:ricoz_app/pages/expandedSection/About_us.dart';
import 'package:ricoz_app/pages/expandedSection/Investor.dart';
import 'package:ricoz_app/pages/expandedSection/careers.dart';
import 'package:ricoz_app/pages/expandedSection/cuture.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
                                padding: const EdgeInsets.only(
                                  left: 50,
                                ),
                                child: Text(
                                  "Careers",
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
                                  padding: const EdgeInsets.only(
                                      left: 50, top: 3, right: 30),
                                  child: Text(
                                    "Contact",
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
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                      height: 2,
                                      width: 75,
                                      color: Pallete.black),
                                ),
                              ],
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
                        "assets/images/map.png",
                        width: 335,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "We're here to help...",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                ),
                SizedBox(
                  height: 40,
                ),
                Icon(
                  Icons.mail,
                  size: 30,
                ),
                Text(
                  "info@ricoz.in",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 100,
                  width: 310,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Pallete.whiteColor,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Icon(Icons.location_on_rounded),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "WP-501/A, 1st floor Shiv Market,\n    wazirpur, New Delhi, 110052 ",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Icon(Icons.phone),
                Text(
                  "7070496387",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
