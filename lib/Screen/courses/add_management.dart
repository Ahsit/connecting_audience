import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/menu_page.dart';

class AdsManagement extends StatelessWidget {
  const AdsManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
                padding: const EdgeInsets.all(20.0),
                child: Image(image: AssetImage('assets/service4.png')),
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
                      const Text(' Ads Management Courses ',
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
                                'his specialization takes a critical look at digital advertising tactics for small business. Students will learn how to generate and launch ad campaigns on small budgets with limited-to-no design skills.',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(57, 57, 57, 1))),
                          ))
                        ],
                      ),
                      const SizedBox(height: 33),
                      Row(
                        children: const [
                          SizedBox(width: 35),
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 1),
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 1),
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 1),
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 10),
                          Text(
                            '4.5',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          SizedBox(width: 20),
                          Image(image: AssetImage('assets/image 211.png')),
                          SizedBox(width: 4),
                          Text('Beginner',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 20)),
                        ],
                      ),
                      SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: const [
                            Expanded(
                                child: Text(
                                    'What you learn in Social Media Marketing ?',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(57, 57, 57, 1))))
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(children: const [
                        const SizedBox(width: 12),
                        Icon(Icons.circle, size: 8),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                              'Understand the major advertising platforms, including: display, video, audio, sponsored, native, social media, search and programmatic',
                              style: TextStyle(fontSize: 16)),
                        ),
                      ]),
                      SizedBox(height: 5),
                      Row(children: const [
                        SizedBox(width: 12),
                        Icon(Icons.circle, size: 8),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                              'Execute tailored digital advertising campaigns on: Social Platform',
                              style: TextStyle(fontSize: 16)),
                        ),
                      ]),
                      SizedBox(height: 42),
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
