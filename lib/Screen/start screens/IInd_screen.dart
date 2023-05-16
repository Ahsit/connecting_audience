// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ricoz_app/Screen/start%20screens/Ist_screen.dart';

import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/login_page.dart';

class IIndScreen extends StatefulWidget {
  const IIndScreen({super.key});

  @override
  State<IIndScreen> createState() => _IIndScreenState();
}

class _IIndScreenState extends State<IIndScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 5, top: 30),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (BuildContext context) {
                            return IstScreen();
                          }));
                        },
                        icon: Icon(Icons.arrow_back_ios))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                height: 300,
                width: 280,
                child: Image.asset("assets/images/2.png"),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "Exciting Offers",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Everyday get exciting offers from the best\n                  social media company",
              style: TextStyle(
                  color: Pallete.fontcolor2,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Color(0xFFB6B5B5), shape: BoxShape.circle),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 10,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Pallete.brown,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: Color(0xFFB6B5B5), shape: BoxShape.circle),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 330,
              height: 45,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Pallete.brown,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return LoginPage();
                    }));
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
