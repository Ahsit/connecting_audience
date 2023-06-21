import 'package:flutter/material.dart';

import 'package:ricoz_app/pages/privacy_security.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 10, top: 30),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SecurityPassword(),
                            ));
                      },
                      child: const Icon(Icons.arrow_back_ios_new)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                children: const [
                  Text('Change Password',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600))
                ],
              ),
            ),
            const SizedBox(height: 25),
            const ChangePin(isObscure: true, txt: 'Current Password'),
            Padding(
              padding: const EdgeInsets.only(left: 34.0, top: 5),
              child: Row(
                children: const [
                  Text(' Enter your current password',
                      style: TextStyle(
                          fontSize: 13, color: Color.fromRGBO(99, 99, 99, 1))),
                ],
              ),
            ),
            const SizedBox(height: 33),
            const ChangePin(isObscure: true, txt: ' New Password'),
            const SizedBox(height: 13),
            const ChangePin(isObscure: true, txt: ' Renter New Password'),
            Padding(
              padding: EdgeInsets.only(left: 34.0, top: 5),
              child: Row(
                children: [
                  Text(
                      '  Numerical , Alphabets and special symbols are only allowed',
                      style: TextStyle(
                          fontSize: 13, color: Color.fromRGBO(99, 99, 99, 1))),
                ],
              ),
            ),
            const SizedBox(height: 250),
            Container(
                width: 375,
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(68, 1, 1, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(' Apply',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins')),
                ))
          ],
        ),
      ),
    ));
  }
}

class ChangePin extends StatelessWidget {
  const ChangePin({
    Key? key,
    required this.isObscure,
    required this.txt,
  }) : super(key: key);

  final bool isObscure;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: 350,
      child: TextFormField(
        obscureText: isObscure,
        decoration: InputDecoration(
          hintText: txt,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(6.0),
          ),
          suffixIcon: const Icon(Icons.remove_red_eye_outlined),
        ),
      ),
    );
  }
}
