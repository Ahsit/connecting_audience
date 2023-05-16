// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyDropdownWidget extends StatelessWidget {
  const MyDropdownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: MyData.data.map((Map map) {
        return Padding(
          padding: const EdgeInsets.only(
            right: 20,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white, elevation: 0),
            onPressed: () {},
            child: ListTile(
              title: Text(map['name']),
              trailing: Icon(Icons.check_box),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class MyData {
  static List<Map> data = [
    {
      "name": "Manufacturer",
    },
    {
      "name": "Business Owners ",
    },
    {
      "name": "Startups",
    },
    {
      "name": "Celebrity",
    },
    {
      "name": "Influencer",
    },
    {
      "name": "Content Creator",
    },
    {
      "name": "Corporate Chief",
    }
  ];
}
