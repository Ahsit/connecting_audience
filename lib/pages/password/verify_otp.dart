// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/password/forgot_password.dart';
import 'package:ricoz_app/pages/password/new_password.dart';

class VerifOTP extends StatefulWidget {
  const VerifOTP({super.key});

  @override
  State<VerifOTP> createState() => _VerifOTPState();
}

class _VerifOTPState extends State<VerifOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Verify OTP",
          style: TextStyle(
              color: Pallete.fontcolor,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const ForgotPassword();
            }));
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Pallete.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, bottom: 8),
              child: Text(
                "Verify mobile number",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                "Enter the 4-Digit code sent to you at\n+91 9999999999",
                style: TextStyle(fontSize: 17, color: Pallete.fontcolor2),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 59,
                  width: 59,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Pallete.black, width: 2)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 59,
                  width: 59,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Pallete.black, width: 2)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 59,
                  width: 59,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Pallete.black, width: 2)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 59,
                  width: 59,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Pallete.black, width: 2)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: SizedBox(
                width: 330,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Pallete.brown,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return NewPassword();
                    }));
                  },
                  child: Text(
                    'Send OTP',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't received code?",
                  style: TextStyle(color: Pallete.fontcolor2, fontSize: 12),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return ForgotPassword();
                    }));
                  },
                  child: Text(
                    "Resend again in 0:30 seconds ",
                    style: TextStyle(
                        color: Pallete.brown,
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
