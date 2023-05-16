// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/Notification_page.dart';
import 'package:ricoz_app/pages/help/help_page.dart';

import 'package:ricoz_app/pages/recharge&renew/recharge.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(68, 1, 1, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(68, 1, 1, 1),
          automaticallyImplyLeading: false,
          title: const Image(
              image: AssetImage('assets/image 1 (4).png'),
              width: 110,
              height: 50),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Help(),
                      ));
                },
                icon: Icon(Icons.help))
          ],
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 21),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(width: 18),
                      const Image(
                          image: AssetImage('assets/image 126 (4).png'),
                          width: 40,
                          height: 40),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text('Welcome Back',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(width: 7),
                              Icon(Icons.waving_hand_rounded,
                                  color: Colors.yellow)
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: const Text('Nicky Johnson',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400)),
                          ),
                        ],
                      ),
                      const SizedBox(width: 60),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Notifications(),
                                ));
                          },
                          child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12))),
                              child: Icon(Icons.notifications_active,
                                  color: Colors.pink[200])),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 50),
                  MenuOptions('Payment Setting'),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                          color: Color.fromARGB(255, 130, 122, 122),
                          width: 380,
                          height: 0.3),
                    ],
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return RechargeRenew();
                        }));
                      },
                      child: MenuOptions('Orders and Bookings')),
                  const SizedBox(height: 15),
                  Container(
                      color: Color.fromARGB(255, 130, 122, 122),
                      width: 380,
                      height: 0.3),
                  const SizedBox(height: 20),
                  MenuOptions('Cashback and Offers'),
                  const SizedBox(height: 15),
                  Container(
                      color: Color.fromARGB(255, 130, 122, 122),
                      width: 380,
                      height: 0.3),
                  const SizedBox(height: 20),
                  MenuOptions('Profile Settings'),
                  const SizedBox(height: 15),
                  Container(
                      color: Color.fromARGB(255, 130, 122, 122),
                      width: 380,
                      height: 0.3),
                  const SizedBox(height: 20),
                  MenuOptions('Policies'),
                  const SizedBox(height: 15),
                  Container(
                      color: Color.fromARGB(255, 130, 122, 122),
                      width: 380,
                      height: 0.3),
                  const SizedBox(height: 20),
                  MenuOptions('24*7 Help & Support'),
                  const SizedBox(height: 15),
                  Container(
                      color: Color.fromARGB(255, 130, 122, 122),
                      width: 380,
                      height: 0.3),
                  const SizedBox(height: 20),
                  MenuOptions('Refer 4 Earn ₹100 '),
                  const SizedBox(height: 15),
                  Container(
                      color: Color.fromARGB(255, 130, 122, 122),
                      width: 380,
                      height: 0.3),
                  const SizedBox(height: 60),
                  Center(
                    child: const Text('V 1.9.0(25578)',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                          image: AssetImage('assets/utube.png'),
                          height: 40,
                          width: 40),
                      SizedBox(width: 10),
                      Image(
                          image: AssetImage('assets/instaa.jpg'),
                          height: 40,
                          width: 40)
                    ],
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ],
        ));
  }

  Row MenuOptions(String txt) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(txt,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400)),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 40.0),
          child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
        ),
      ],
    );
  }
}
