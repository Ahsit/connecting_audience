// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/cart_page.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        shadowColor: Colors.transparent,
        title: const Text('Checkout',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500)),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Cart(),
                ));
          },
          child: const Padding(
            padding: const EdgeInsets.only(left: 10),
            child:
                Icon(Icons.keyboard_arrow_left, color: Colors.black, size: 30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 31.0, left: 20),
              child: Row(
                children: [
                  Text('Shipping Address',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            const SizedBox(height: 21),
            Center(
              child: Container(
                width: 343,
                height: 95,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 28.0, top: 18),
                      child: Row(
                        children: [
                          Text('John Doe',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500)),
                          SizedBox(width: 175),
                          Text('Change',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(68, 1, 1, 1))),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 28.0, top: 7),
                      child: Row(
                        children: [
                          Text(
                              '7 Cambridge Road\nCourt Chino Hills, CA 91709, United States',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                SizedBox(width: 20),
                Text('Curernt Payment Method',
                    style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
                SizedBox(width: 78),
                Text('Change',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                    color: Pallete.whiteColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: const [
                    SizedBox(
                        height: 100,
                        child: Image(
                          image: AssetImage(
                            'assets/card.png',
                          ),
                        )),
                    Text('**** **** **** 3947',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400))
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Row(
              children: [
                SizedBox(width: 20),
                Text('Payment Methods',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600))
              ],
            ),
            const SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    width: 100,
                    height: 84,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Column(
                        children: [
                          SizedBox(height: 17),
                          Image(image: AssetImage('assets/fedex.png')),
                          SizedBox(height: 10),
                          Text('2-3 days')
                        ],
                      ),
                    )),
                Container(
                    width: 100,
                    height: 84,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Column(
                        children: [
                          SizedBox(height: 17),
                          Image(
                            image: AssetImage('assets/usps1.png'),
                            width: 80,
                          ),
                          SizedBox(height: 10),
                          Text('2-3 days')
                        ],
                      ),
                    )),
                Container(
                    width: 100,
                    height: 84,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Column(
                        children: [
                          SizedBox(height: 17),
                          Image(
                            image: AssetImage('assets/dhl1.png'),
                            width: 80,
                          ),
                          SizedBox(height: 10),
                          Text('2-3 days')
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              height: 1,
              color: Pallete.black,
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                SizedBox(width: 20),
                Text('Order :',
                    style: TextStyle(
                        color: Color.fromARGB(255, 115, 112, 112),
                        fontSize: 16)),
                SizedBox(width: 217),
                Icon(Icons.currency_rupee),
                Text('39,999',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                SizedBox(height: 25),
              ],
            ),
            const SizedBox(height: 14),
            const Row(
              children: [
                SizedBox(width: 20),
                Text('Delivery :',
                    style: TextStyle(
                        color: Color.fromARGB(255, 115, 112, 112),
                        fontSize: 16)),
                SizedBox(width: 230),
                Text('FREE',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                SizedBox(height: 25),
              ],
            ),
            const SizedBox(height: 14),
            const Row(
              children: [
                SizedBox(width: 20),
                Text('Summary :',
                    style: TextStyle(
                        color: Color.fromARGB(255, 115, 112, 112),
                        fontSize: 16)),
                SizedBox(width: 189),
                Icon(Icons.currency_rupee),
                Text('39,999',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              ],
            ),
            const SizedBox(height: 40),
            Center(
              child: Center(
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(68, 1, 1, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Center(
                        child: const Text(
                          'Submit Order',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Roboto Slab',
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
