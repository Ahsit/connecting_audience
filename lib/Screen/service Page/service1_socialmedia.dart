// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/widget/dropdown.dart';

class ServiceSocialMedia extends StatefulWidget {
  const ServiceSocialMedia({Key? key}) : super(key: key);

  @override
  State<ServiceSocialMedia> createState() => _ServiceSocialMediaState();
}

class _ServiceSocialMediaState extends State<ServiceSocialMedia> {
  bool isVisible = false;
  bool isVisible2 = true;
  bool _isOpen = true;
  void _toggleOpen() {
    setState(() {
      _isOpen = !_isOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Service",
          style: TextStyle(fontWeight: FontWeight.w700, color: Pallete.black),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Pallete.black,
            )),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "SHARE  ",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/social media.png"))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Container(
                height: 1000,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Pallete.whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Social Media Service:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text("#FOR EVERY SOCIAL MEDIA CELEBS"),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            Text(
                              "Service Details",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 1),
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: Pallete.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Hello Everyone',
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: RichText(
                              text: TextSpan(
                                  text:
                                      "We are excited to announce that we have recently launched a new social media service and we would like to invite you all to join us on this platform.",
                                  style: TextStyle(
                                    color: Pallete.black,
                                  ),
                                  children: <TextSpan>[
                                TextSpan(
                                    text: "Read more",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blueAccent))
                              ])),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Visibility(
                          visible: isVisible,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Text(
                                "Our social media service offers a range of features to help you stay connected with friends, family, and colleagues. You can create a profile, share photos and videos, join communities, and connect with people from all around the world.We believe that our platform provides a unique and engaging experience, and we would love for you to be a part of it. So come join us today and discover a new way to socialize and stay connected."),
                          )),
                      Divider(
                        height: 2,
                        color: Pallete.fontcolor2,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: InkWell(
                          onTap: _toggleOpen,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Eligibility Criteria',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Icon(_isOpen
                                  ? Icons.arrow_drop_up
                                  : Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      ),
                      if (_isOpen) MyDropdownWidget(),
                    ],
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
// assets/social media.png