// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ricoz_app/Services/colors.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

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
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings_outlined,
                color: Pallete.black,
              ))
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/Push notifications.png',
          ),
          Text(
            'No Notificaion,\n          yet!',
            style: TextStyle(fontSize: 33, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Please wait until you get  notification')
        ],
      ),
    );
  }
}
