// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ricoz_app/Services/colors.dart';

class Coupon extends StatelessWidget {
  const Coupon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Coupons',
          style: TextStyle(
              color: Pallete.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lora'),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/coupon1.png'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 100,
          ),
          Stack(
            children: [
              Image.asset(
                'assets/coupon2.png',
                width: 130,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28, right: 110),
                child: Image.asset(
                  'assets/coupon2-2.png',
                  width: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45, left: 105),
                child: Image.asset(
                  'assets/coupon2-2.png',
                  width: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 30),
                child: Image.asset(
                  'assets/coupon2-1.png',
                  width: 50,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            'No Coupons available',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 27),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Add address to see your coupons',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
          ),
          SizedBox(
            height: 60,
          ),
          SizedBox(
              height: 45,
              width: 220,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: BorderSide(),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      shadowColor: Colors.transparent),
                  onPressed: () {},
                  child: Text(
                    'Add Address',
                    style: TextStyle(color: Pallete.black, fontSize: 20),
                  )))
        ],
      ),
    );
  }
}
