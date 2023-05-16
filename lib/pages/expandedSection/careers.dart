// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/menu_page.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/expandedSection/About_us.dart';
import 'package:ricoz_app/pages/expandedSection/Investor.dart';
import 'package:ricoz_app/pages/expandedSection/contact.dart';
import 'package:ricoz_app/pages/expandedSection/cuture.dart';

class Careers extends StatefulWidget {
  const Careers({super.key});

  @override
  State<Careers> createState() => _CareersState();
}

class _CareersState extends State<Careers> {
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
          actions: [
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
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 20),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return AboutUs();
                                      }));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 7, top: 3),
                                      child: Text(
                                        "About us",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Pallete.fontcolor2,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text(
                                    "Careers",
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
                                      width: 70,
                                      color: Pallete.black),
                                )
                              ],
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
                  height: 180,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Pallete.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 90),
                        child: Text(
                          "Content Writing",
                          style: TextStyle(
                              color: Pallete.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          "Content Writers make impressive use of\nsimple words to create content that\nattracts audiences.",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, top: 15),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          color: Pallete.brown, width: 1.5)),
                                  child: Center(
                                      child: Text(
                                    "Learn More",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Pallete.brown,
                                        fontSize: 16),
                                  )),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 30,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Pallete.brown,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    "Apply Now",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Pallete.whiteColor,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            )
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
                padding: const EdgeInsets.only(top: 320),
                child: Container(
                  height: 180,
                  width: 340,
                  decoration: BoxDecoration(
                    color: Pallete.whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 20, left: 90),
                        child: Text(
                          "Web Developer",
                          style: TextStyle(
                              color: Pallete.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text(
                          "A web developer is a programmer who\ndevelops World Wide Web applications\nusing client-server model. ",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, top: 15),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 30,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        color: Pallete.brown, width: 1.5)),
                                child: Center(
                                    child: Text(
                                  "Learn More",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Pallete.brown,
                                      fontSize: 16),
                                )),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 30,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Pallete.brown,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Center(
                                  child: Text(
                                    "Apply Now",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Pallete.whiteColor,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
