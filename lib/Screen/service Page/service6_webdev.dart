import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/menu_page.dart';

class ServiceWebDev extends StatelessWidget {
  const ServiceWebDev({Key? key}) : super(key: key);

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
                child: Image(image: AssetImage('assets/web.png')),
              ),
              Container(
                  height: 610,
                  width: width * 0.9,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 14),
                      const Text('Web Development',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 33),
                      Row(children: const [
                        SizedBox(width: 17),
                        Image(
                            image: AssetImage('assets/image 193.png'),
                            width: 50,
                            height: 50),
                        SizedBox(width: 9),
                        Text('Web Design',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                      ]),
                      const SizedBox(height: 13),
                      Row(children: const [
                        SizedBox(width: 17),
                        Image(
                            image: AssetImage('assets/image 194.png'),
                            width: 50,
                            height: 50),
                        SizedBox(width: 9),
                        Text('Website Development',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                      ]),
                      const SizedBox(height: 13),
                      Row(children: const [
                        SizedBox(width: 17),
                        Image(
                            image: AssetImage('assets/image 195.png'),
                            width: 50,
                            height: 50),
                        SizedBox(width: 9),
                        Text('E-Commerce Website',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                      ]),
                      const SizedBox(height: 13),
                      Row(children: const [
                        SizedBox(width: 17),
                        Image(
                            image: AssetImage('assets/image 196.png'),
                            width: 50,
                            height: 50),
                        SizedBox(width: 9),
                        Expanded(
                          child: Text('Wordpress Website',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                        ),
                      ]),
                      const SizedBox(height: 13),
                      Row(children: const [
                        SizedBox(width: 17),
                        Image(
                            image: AssetImage('assets/image 197.png'),
                            width: 50,
                            height: 50),
                        SizedBox(width: 9),
                        Expanded(
                          child: Text('Custom Website',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400)),
                        ),
                      ]),
                      const SizedBox(height: 13),
                      Row(children: const [
                        SizedBox(width: 17),
                        Image(
                            image: AssetImage('assets/image 198.png'),
                            width: 50,
                            height: 50),
                        SizedBox(width: 9),
                        Text('Hire Developer',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400)),
                      ]),
                      const SizedBox(height: 45),
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
                                      color: Colors.white)))),
                      const SizedBox(height: 15),
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
