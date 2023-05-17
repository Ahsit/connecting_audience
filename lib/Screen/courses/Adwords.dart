// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/Notification_page.dart';
import 'package:ricoz_app/pages/help/help_page.dart';
import 'package:ricoz_app/pages/home_page.dart';

import 'package:ricoz_app/pages/menu_page.dart';

class Adwordscourse extends StatelessWidget {
  const Adwordscourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(68, 1, 1, 1),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                floating: true,
                snap: true,
                backgroundColor: const Color.fromRGBO(68, 1, 1, 1),
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: const Image(
                      image: AssetImage('assets/image 125 (4).png'),
                    ),
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
              )
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      height: 30,
                      width: 20,
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Pallete.whiteColor,
                            size: 15,
                          )),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                      child: Text(
                        "Course Detail",
                        style: TextStyle(
                            color: Pallete.whiteColor,
                            fontWeight: FontWeight.w400),
                      ))
                ]),
                Stack(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          height: 253.5,
                          width: 358,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/course/adwords.png'))),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: .3),
                      child: Container(
                        height: 253.5,
                        width: 360,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/course/rectangle1.png'))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 40),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/course/rectangle2.png',
                            height: 43,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            'assets/course/rectangle2.png',
                            height: 43,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 110, left: 50),
                      child: Text(
                        'Best Google Adwords\ncourse from ricoz',
                        style: TextStyle(
                            color: Pallete.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 170),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromARGB(185, 61, 37, 28)),
                            child: Center(
                              child: Text(
                                'Computer',
                                style: TextStyle(
                                    color: Pallete.whiteColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 45,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromARGB(185, 61, 37, 28)),
                            child: Center(
                              child: Text(
                                '#bestgadsscourse',
                                style: TextStyle(
                                    color: Pallete.whiteColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    height: 950,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Pallete.whiteColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Image.asset(
                                'assets/course/insta.png',
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                height: 17,
                                width: 1,
                                color: Pallete.fontcolor2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 22),
                              child: Text(
                                '  GADs Course   ',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Pallete.fontcolor2),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                height: 20,
                                width: 1,
                                color: Color.fromARGB(255, 168, 167, 167),
                              ),
                            ),
                            SizedBox(
                              width: 85,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                'Seats Available',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 108, 154, 56),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Text(
                            'Graphics Design',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Course Details',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: RichText(
                            text: TextSpan(
                              text:
                                  'how to get started with Google Search Ads and create successful campaigns to reach new customers and grow your business. ',
                              style: TextStyle(
                                  color: Pallete.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300),
                              children: [
                                TextSpan(
                                    text: 'more',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline,
                                        decorationThickness: 2))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Divider(
                          height: .3,
                          color: Pallete.black,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Course Requirement',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            '• English proficiency\n• Prior knowledge of computer.',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Course Duration',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 05,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            '34hr 40m',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Pallete.fontcolor2,
                                fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Course Rating',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/course/full.png',
                                height: 15,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Image.asset(
                                'assets/course/full.png',
                                height: 15,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Image.asset(
                                'assets/course/full.png',
                                height: 15,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Image.asset(
                                'assets/course/full.png',
                                height: 15,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Image.asset(
                                'assets/course/half.png',
                                height: 15,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '4.51',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900, fontSize: 19),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Image.asset(
                                'assets/course/graph.png',
                                height: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Beginner Level',
                                style: TextStyle(
                                    fontWeight: FontWeight.w800, fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Payment Details',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Color(0xFFCBE2F5),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(115, 117, 117, 117),
                                  blurRadius: 01,
                                  offset: const Offset(
                                    2.0,
                                    5.0,
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Special Pack',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  SizedBox(
                                    height: 30,
                                    width: 90,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Pallete.whiteColor,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                side: BorderSide(
                                                    color: Pallete.brown,
                                                    width: 2.5))),
                                        onPressed: () {},
                                        child: Text(
                                          'BUY NOW',
                                          style: TextStyle(
                                              color: Pallete.brown,
                                              fontSize: 13),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 254, 243, 219),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(115, 117, 117, 117),
                                  blurRadius: 01,
                                  offset: const Offset(
                                    2.0,
                                    5.0,
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Special Pack Pro',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 58,
                                  ),
                                  SizedBox(
                                    height: 30,
                                    width: 90,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Pallete.whiteColor,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                side: BorderSide(
                                                    color: Pallete.brown,
                                                    width: 2.5))),
                                        onPressed: () {},
                                        child: Text(
                                          'BUY NOW',
                                          style: TextStyle(
                                              color: Pallete.brown,
                                              fontSize: 13),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 222, 249),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(115, 117, 117, 117),
                                  blurRadius: 01,
                                  offset: const Offset(
                                    2.0,
                                    5.0,
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Corporate Pack',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 30,
                                    width: 90,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Pallete.whiteColor,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                side: BorderSide(
                                                    color: Pallete.brown,
                                                    width: 2.5))),
                                        onPressed: () {},
                                        child: Text(
                                          'BUY NOW',
                                          style: TextStyle(
                                              color: Pallete.brown,
                                              fontSize: 13),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Help & Support',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            'In case of any queries, refer to the FAQs or contact us via the ‘help’ section below',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w300),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                                child: Icon(
                                  Icons.email_outlined,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                      color: Pallete.black, fontSize: 17),
                                ),
                              ),
                              SizedBox(
                                width: 05,
                              ),
                              Container(
                                height: 40,
                                width: 1,
                                color: Pallete.black,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.help_outline_outlined,
                                size: 30,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Help(),
                                      ));
                                },
                                child: Text(
                                  'FAQs',
                                  style: TextStyle(
                                      color: Pallete.black, fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            '*By accepting you agree to fulfill all the collaboration requirements and terms & conditions mentioned.',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w300),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: SizedBox(
                            height: 50,
                            width: 320,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Pallete.brown,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                                onPressed: () {},
                                child: Text(
                                  'Start your course today',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
