// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ricoz_app/Services/colors.dart';

class Notification extends StatelessWidget {
  const Notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notifications',
          style: TextStyle(
              color: Pallete.black,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lora'),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
    );
  }
}
