// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/password/forgot_password.dart';
import 'package:ricoz_app/pages/login_page.dart';

class RecoverPassword1 extends StatefulWidget {
  const RecoverPassword1({super.key});

  @override
  State<RecoverPassword1> createState() => _RecoverPassword1State();
}

class _RecoverPassword1State extends State<RecoverPassword1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Forgot Password",
          style: TextStyle(
              color: Pallete.fontcolor,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return ForgotPassword();
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
                "Recover Password",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                "Enter your email address to recover\nyour password",
                style: TextStyle(fontSize: 17, color: Pallete.fontcolor2),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                height: 55,
                width: 350,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Pallete.black, width: 2)),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Pallete.black),
                      suffixIcon: Icon(
                        Icons.mail,
                        color: Pallete.black,
                        size: 20,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Pallete.brown,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Column(
                          children: [
                            Image.asset(
                              "assets/images/confirm.jpg",
                              height: 70,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Done",
                              style:
                                  TextStyle(fontSize: 40, color: Pallete.brown),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "We have sucessfully sent\nyou the reset password link.\n   Kindly check your email.",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Pallete.fontcolor2,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Having Trouble?",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            SizedBox(
                              width: 130,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Pallete.brown),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return LoginPage();
                                    }));
                                  },
                                  child: Text("Done")),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'Send Reset Link',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
