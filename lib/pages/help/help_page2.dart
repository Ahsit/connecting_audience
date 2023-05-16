// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/help/help_page1.dart';
import 'package:ricoz_app/pages/help/help_page3.dart';
import 'package:ricoz_app/pages/help/help_page4.dart';
import 'package:ricoz_app/pages/help/help_page5.dart';
import 'package:ricoz_app/pages/help/help_page6.dart';
import 'package:ricoz_app/pages/home_page.dart';

class Help2 extends StatelessWidget {
  const Help2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Help',
          style: TextStyle(
              color: Pallete.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lora'),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Pallete.black,
            )),
        actions: [
          Row(
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Tickets',
                    style: TextStyle(
                        color: Pallete.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings_outlined,
                    color: Pallete.black,
                  )),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Text(
                'FAQs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Container(
                height: 405,
                width: 350,
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                        top: 25,
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Help1(),
                                  ));
                            },
                            child: Text(
                              'Refund not received  after cancellation.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Pallete.fontcolor2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Divider(
                        height: 1,
                        color: Pallete.fontcolor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cancellation Policy',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Pallete.fontcolor2),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Order should be cancelled within 48 hrs of\npurchase time.\nUnless there will be no refund for the same',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 55),
                            child: Icon(
                              Icons.arrow_drop_down_outlined,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Divider(
                        height: 1,
                        color: Pallete.fontcolor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Help3(),
                                  ));
                            },
                            child: Text(
                              'Forgot your Ricoz password?',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Pallete.fontcolor2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 95),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Divider(
                        height: 1,
                        color: Pallete.fontcolor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Help4(),
                                  ));
                            },
                            child: Text(
                              'Your ricoz OTP is more important',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Pallete.fontcolor2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 68),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Divider(
                        height: 1,
                        color: Pallete.fontcolor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Help5(),
                                  ));
                            },
                            child: Text(
                              'Got less cashback than expected',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Pallete.fontcolor2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 68),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Divider(
                        height: 1,
                        color: Pallete.fontcolor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Help6(),
                                  ));
                            },
                            child: Text(
                              'Referral reward is not yet recieved yet',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Pallete.fontcolor2),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 39),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Text(
                'Still have a question in mind?',
                style: TextStyle(color: Pallete.fontcolor2),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                  height: 50,
                  width: 340,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13)),
                          backgroundColor: Pallete.brown),
                      onPressed: () {},
                      child: Text(
                        "Contact Our Customer Executive",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
