// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ricoz_app/Screen/start%20screens/Ist_screen.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    final user = FirebaseAuth.instance.currentUser;
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => user == null ? const IstScreen() : HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Pallete.brown,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: 'rico',
                        style: TextStyle(
                            fontSize: 80,
                            color: Pallete.ricoz,
                            fontFamily: "Cormorant Garamond"),
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'Z',
                              style: TextStyle(
                                  fontSize: 90,
                                  color: Pallete.ricoz,
                                  fontFamily: "Cormorant Garamond")),
                        ],
                      ),
                    ),
                    const Text(
                      "CONNECTING AUDIENCE",
                      style: TextStyle(
                          fontSize: 15,
                          color: Pallete.ricoz,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Text(
                "© 2023. Ricoz Pvt.Ltd.",
                style: TextStyle(
                    fontSize: 15,
                    color: Pallete.ricoz,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
