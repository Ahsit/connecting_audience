// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:ricoz_app/pages/menu_page.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/recharge&renew/Coporate_pack.dart';
import 'package:ricoz_app/pages/recharge&renew/special_pack.dart';
import 'package:ricoz_app/pages/recharge&renew/special_pack_pro.dart';

class RechargeRenew extends StatefulWidget {
  const RechargeRenew({super.key});

  @override
  State<RechargeRenew> createState() => _RechargeRenewState();
}

class _RechargeRenewState extends State<RechargeRenew> {
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
              height: 610,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Pallete.Container,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Recharge and renew",
                      style: TextStyle(
                          fontSize: 22,
                          color: Pallete.fontcolor2,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 350,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Color(0xFFCBE2F5),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1,
                              offset: Offset(1, 4),
                              color: Color(0xFFA6A5A5))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 25),
                              child: Text(
                                "Special Pack",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Pallete.fontcolor2,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, left: 105),
                              child: Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Pallete.whiteColor,
                                    border: Border.all(width: 1.5),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Text(
                                    "BUY NOW",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Pallete.black,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 27),
                          child: Row(
                            children: [
                              Text(
                                "₹10,500",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 160, top: 5),
                                child: Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Pallete.brown,
                                      border: Border.all(width: 1.5),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      "RENEW",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Pallete.whiteColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 170),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return SpecialPack();
                              }));
                            },
                            child: Text(
                              "view more",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Pallete.fontcolor2,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 350,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Color(0xFFF3E5D0),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1,
                              offset: Offset(1, 4),
                              color: Color(0xFFA6A5A5))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 25),
                              child: Text(
                                "Special Pack Pro",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Pallete.fontcolor2,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 70),
                              child: Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Pallete.whiteColor,
                                    border: Border.all(width: 1.5),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Text(
                                    "BUY NOW",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Pallete.black,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 27),
                          child: Row(
                            children: [
                              Text(
                                "₹14,800",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 160),
                                child: Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Pallete.brown,
                                      border: Border.all(width: 1.5),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      "RENEW",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Pallete.whiteColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 170),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return (SpecialPackPro());
                              }));
                            },
                            child: Text(
                              "view more",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Pallete.fontcolor2,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 350,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Color(0xFFF1CFFB),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1,
                              offset: Offset(1, 4),
                              color: Color(0xFFA6A5A5))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 25),
                              child: Text(
                                "Corporate Pack",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Pallete.fontcolor2,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 82),
                              child: Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Pallete.whiteColor,
                                    border: Border.all(width: 1.5),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Center(
                                  child: Text(
                                    "BUY NOW",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Pallete.black,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 27),
                          child: Row(
                            children: [
                              Text(
                                "₹21,000",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 160),
                                child: Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Pallete.brown,
                                      border: Border.all(width: 1.5),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Center(
                                    child: Text(
                                      "RENEW",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Pallete.whiteColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 170),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return (Corporatepack());
                              }));
                            },
                            child: Text(
                              "view more",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Pallete.fontcolor2,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 120,
                    width: 350,
                    decoration: BoxDecoration(color: Color(0xFFFFE0E7)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Still Confused which one suits you best",
                            style: TextStyle(
                                color: Pallete.brown,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          width: 250,
                          decoration: BoxDecoration(
                              color: Pallete.brown,
                              borderRadius: BorderRadius.circular(40)),
                          child: Center(
                            child: Text(
                              "Consult with our Executive",
                              style: TextStyle(
                                  color: Pallete.whiteColor,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "*Each consultation cost ₹300",
                          style: TextStyle(
                              color: Pallete.fontcolor2,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
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
          ],
        ),
      ),
    );
  }
}
