// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ricoz_app/Screen/start%20screens/IInd_screen.dart';

import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/login_page.dart';

class IstScreen extends StatefulWidget {
  const IstScreen({super.key});

  @override
  State<IstScreen> createState() => _IstScreenState();
}

class _IstScreenState extends State<IstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const LoginPage();
                }));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 35, right: 10),
                    child: Text("Skip",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Pallete.black)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                height: 300,
                width: 280,
                child: Image.asset("assets/images/1.png"),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              "All your needs covered",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Experience the best igital service\n             covered all for you",
              style: TextStyle(color: Pallete.fontcolor2, fontSize: 16),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Pallete.brown,
                      borderRadius: BorderRadius.circular(10)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                        color: Color(0xFFB6B5B5), shape: BoxShape.circle),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                        color: Color(0xFFB6B5B5), shape: BoxShape.circle),
                  ),
                ),
              ],
            ),
            const SizedBox(
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
                      return const IIndScreen();
                    }));
                  },
                  child: const Text(
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
