// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ricoz_app/Screen/start%20screens/Ist_screen.dart';
import 'package:ricoz_app/Services/colors.dart';

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
    Timer(
        const Duration(seconds: 1),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const IstScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Pallete.brown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'rico',
                  style: TextStyle(
                      fontSize: 80,
                      color: Pallete.ricoz,
                      fontFamily: "Cormorant Garamond"),
                ),
                Text('Z',
                    style: TextStyle(
                        fontSize: 90,
                        color: Pallete.ricoz,
                        fontFamily: "Cormorant Garamond"))
              ],
            ),
            const Text(
              "CONNECTING AUDIENCE",
              style: TextStyle(fontSize: 15, color: Pallete.ricoz),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 450, bottom: 50),
              child: Text(
                "© 2023. Ricoz Pvt.Ltd.",
                style: TextStyle(fontSize: 15, color: Pallete.ricoz),
              ),
            )
          ],
        ),
      ),
    );
  }
}
