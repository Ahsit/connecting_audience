// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:ricoz_app/pages/menu_page.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(68, 1, 1, 1),
        appBar: AppBar(
            backgroundColor: const Color.fromRGBO(68, 1, 1, 1),
            automaticallyImplyLeading: false,
            title: const Image(
                image: AssetImage('assets/image 1 (4).png'),
                width: 110,
                height: 50),
            centerTitle: true,
            leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MenuPage(),
                    ));
              },
              child: const Image(
                image: AssetImage('assets/image 125 (4).png'),
              ),
            ),
            actions: const [
              Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.notifications,
                    size: 30,
                  )),
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Image(image: AssetImage('assets/service1.png')),
              ),
              Container(
                  height: 600,
                  width: width * 0.9,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 14),
                      const Text(' Social Media Courses ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 9),
                      Row(
                        children: const [
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text(
                                ' Learn social media marketing from basics in this free online training. Social media course is taught hands-on by experts. Understand all about how to grow a following & brand on social media. Best for beginners. Start now!',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(57, 57, 57, 1))),
                          ))
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: const [
                          SizedBox(width: 35),
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 3),
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 3),
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 3),
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 13),
                          Text(
                            '4.5',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(width: 20),
                          Image(
                            image: AssetImage('assets/image 211.png'),
                            height: 35,
                          ),
                          SizedBox(width: 3),
                          Text('Beginner',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17)),
                        ],
                      ),
                      const SizedBox(height: 24),
                      Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 12),
                              Text(
                                  'What you learn in Social Media\nMarketing ?',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(57, 57, 57, 1))),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(children: [
                            const SizedBox(width: 12),
                            Icon(Icons.circle, size: 8),
                            SizedBox(width: 5),
                            Text('Social Media Marketing',
                                style: TextStyle(fontSize: 16)),
                          ]),
                          SizedBox(height: 5),
                          Row(children: [
                            const SizedBox(width: 12),
                            Icon(Icons.circle, size: 8),
                            SizedBox(width: 5),
                            Text('Formulating Strategies',
                                style: TextStyle(fontSize: 16)),
                          ]),
                          SizedBox(height: 5),
                          Row(children: [
                            const SizedBox(width: 12),
                            Icon(Icons.circle, size: 8),
                            SizedBox(width: 5),
                            Text('Planning', style: TextStyle(fontSize: 16)),
                          ]),
                          SizedBox(height: 5),
                          Row(children: [
                            const SizedBox(width: 12),
                            Icon(Icons.circle, size: 8),
                            SizedBox(width: 5),
                            Text('Publishing and monitoring campaigns',
                                style: TextStyle(fontSize: 16)),
                          ]),
                          SizedBox(height: 5),
                          Row(children: [
                            const SizedBox(width: 12),
                            Icon(Icons.circle, size: 8),
                            SizedBox(width: 5),
                            Text('Social Media Analytics',
                                style: TextStyle(fontSize: 16)),
                          ]),
                        ],
                      ),
                      const SizedBox(height: 42),
                      Container(
                          width: 277,
                          height: 47,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(68, 1, 1, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(42),
                            ),
                          ),
                          child: const Center(
                              child: Text('Start your learning',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white))))
                    ],
                  )),
              const SizedBox(height: 26),
              const Divider(
                color: Colors.white,
                thickness: 5,
                indent: 138,
                endIndent: 138,
              )
            ],
          ),
        ));
  }
}
