// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/Notification_page.dart';
import 'package:ricoz_app/pages/home_page.dart';
import 'package:ricoz_app/pages/menu_page.dart';
import 'package:ricoz_app/pages/offers_page.dart';
import 'package:ricoz_app/pages/search_page.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
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
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 30),
                    child: Text(
                      'My Cart',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Image.asset(
                          'assets/dmp.png',
                          height: 140,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Digital Marketing\npackage',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19,
                                  letterSpacing: 1.5),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '₹ XX,499',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  letterSpacing: .5),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Available',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 89, 207, 150),
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: .5),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Buy more save more, upto ₹750',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 29, 132, 216),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 138,
                              height: 38,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 203, 202, 202),
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 18),
                              child: SizedBox(
                                height: 40,
                                width: 40,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.delete_outline_sharp)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 21),
                              child: Container(
                                width: 50,
                                height: 35,
                                color: Colors.white,
                                child: Center(
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 25),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: SizedBox(
                                height: 40,
                                width: 40,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_circle_outline,
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Container(
                                height: 30,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey)),
                                child: Center(
                                  child: Text(
                                    'Delete',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Container(
                                height: 30,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey)),
                                child: Center(
                                  child: Text(
                                    'Safe for later',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 330,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: '  Enter your promo code',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white))),
                            ),
                          ),
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Container(
                                width: 50,
                                height: 30,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 60,
                color: Colors.white,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ));
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color.fromARGB(255, 89, 84, 84),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: const Image(
                                image: AssetImage('assets/homeimg.jpg'),
                                width: 20,
                                height: 20),
                          ),
                        )),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SearchPage(),
                              ));
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: const Image(
                                image: AssetImage('assets/searchon.jpg'),
                                width: 20,
                                height: 20),
                          ),
                        )),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Offers(),
                              ));
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color.fromARGB(255, 89, 84, 84),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: const Image(
                                image: AssetImage('assets/discount.png'),
                                width: 20,
                                height: 20),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: SizedBox(
                        height: 35,
                        width: 109,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.transparent,
                              backgroundColor:
                                  Color.fromARGB(174, 235, 235, 235),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          onPressed: () {},
                          child: Wrap(
                            children: <Widget>[
                              Image.asset(
                                "assets/cart2.png",
                                width: 20,
                              ),
                              SizedBox(
                                width: 05,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text("Orders",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
