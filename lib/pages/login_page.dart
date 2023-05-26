// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ricoz_app/Screen/start%20screens/Ist_screen.dart';
import 'package:ricoz_app/Services/firebase_auth_method.dart';

import 'package:ricoz_app/Services/colors.dart';

import 'package:ricoz_app/pages/password/create_account.dart';
import 'package:ricoz_app/pages/password/forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool authenticated = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void loginUser() {
    FirebaseAuthMethods(FirebaseAuth.instance).loginWithEmail(
        email: emailController.text,
        password: passwordController.text,
        context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Login",
          style: TextStyle(
              color: Pallete.fontcolor,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return IstScreen();
            }));
          },
          icon: Icon(
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
              padding: const EdgeInsets.only(top: 20, left: 20, bottom: 8),
              child: Text(
                "Welcome back",
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                "Enter your Email address for\nsign in, Happy Experience",
                style: TextStyle(fontSize: 17, color: Pallete.fontcolor2),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                height: 60,
                width: 350,
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Pallete.black, width: 2)),
                      labelText: 'Userid',
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
              height: 15,
            ),
            Center(
              child: SizedBox(
                height: 60,
                width: 350,
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Pallete.black, width: 2)),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Pallete.black),
                      suffixIcon: Icon(
                        Icons.remove_red_eye_rounded,
                        color: Pallete.black,
                        size: 20,
                      )),
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return ForgotPassword();
                  }));
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Pallete.brown,
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
                    onPressed: loginUser,
                    // () async {
                    //   final authenticate = await LocalAuth.authenticate();
                    //   setState(() {
                    //     authenticated = authenticate;
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (BuildContext context) {
                    //   return HomePage();
                    // }));
                    //   });
                    // },
                    child: Text(
                      'LOGIN',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Pallete.fontcolor2, fontSize: 17),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return CreateAccountPage();
                    }));
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Pallete.brown,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            Center(
                child: Text(
              "Or",
              style: TextStyle(
                color: Pallete.fontcolor2,
                fontSize: 20,
              ),
            )),
            SizedBox(
              height: 25,
            ),
            Center(
              child: SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Pallete.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.facebook,
                            size: 25,
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          'Login with Facebook',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Pallete.whiteColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      FirebaseAuthMethods(FirebaseAuth.instance)
                          .signInWithGoogle(context);
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Image.asset(
                            "assets/images/google.png",
                            height: 20,
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                              fontSize: 18, color: Pallete.fontcolor2),
                        ),
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Pallete.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Icon(
                            Icons.apple,
                            size: 25,
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Text(
                          'Continue with Apple',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
