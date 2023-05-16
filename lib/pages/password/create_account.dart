// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/login_page.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  bool isChecked = false;

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
              return LoginPage();
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
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
              ),
              child: Text(
                "Create Account",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                "Enter Your Name, Email, Mobile Number and\nPassword for sign up",
                style: TextStyle(fontSize: 17, color: Pallete.fontcolor2),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: 350,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Pallete.black, width: 2)),
                      labelText: 'Full Name',
                      labelStyle: TextStyle(color: Pallete.fontcolor2),
                      suffixIcon: Icon(
                        Icons.account_box,
                        color: Pallete.fontcolor2,
                        size: 20,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: SizedBox(
                width: 350,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Pallete.black, width: 2)),
                      labelText: 'Email Address',
                      labelStyle: TextStyle(color: Pallete.fontcolor2),
                      suffixIcon: Icon(
                        Icons.mail,
                        color: Pallete.fontcolor2,
                        size: 20,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: SizedBox(
                width: 350,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Pallete.black, width: 2)),
                      labelText: 'Mobile Number',
                      labelStyle: TextStyle(color: Pallete.fontcolor2),
                      suffixIcon: Icon(
                        Icons.smartphone,
                        color: Pallete.fontcolor2,
                        size: 20,
                      ),
                      prefixText: "+91"),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: SizedBox(
                width: 350,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Pallete.black, width: 2)),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Pallete.fontcolor2),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Pallete.fontcolor2, fontSize: 17),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return LoginPage();
                    }));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Pallete.brown,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
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
                                      style: TextStyle(
                                          fontSize: 40, color: Pallete.brown),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "You have sucessfully created your Account",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Pallete.fontcolor2,
                                          fontWeight: FontWeight.w400),
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
                                            Navigator.push(context,
                                                MaterialPageRoute(builder:
                                                    (BuildContext context) {
                                              return LoginPage();
                                            }));
                                          },
                                          child: Text("Done")),
                                    )
                                  ],
                                ),
                              ));
                    },
                    child: Text(
                      'SIGN UP',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    )),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Container(
                    height: 23,
                    width: 23,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5)),
                    child: Checkbox(
                        checkColor: Pallete.brown,
                        activeColor: Pallete.brown,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    "By selecting checkbox you agree to our\nTerm Condition & Privacy Policy.",
                    style: TextStyle(color: Pallete.fontcolor2),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
