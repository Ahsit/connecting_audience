import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/menu_page.dart';

class ServiceShopify extends StatelessWidget {
  const ServiceShopify({Key? key}) : super(key: key);

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
                child: Image(image: AssetImage('assets/shopify.png')),
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
                      const Text('Shopify Development',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 33),
                      Row(children: const [
                        SizedBox(width: 17),
                        Image(
                            image: AssetImage('assets/image 205.png'),
                            width: 50,
                            height: 50),
                        SizedBox(width: 9),
                        Text('Shopify Store Setup',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
                      ]),
                      const SizedBox(height: 13),
                      Row(children: const [
                        SizedBox(width: 17),
                        Image(
                            image: AssetImage('assets/image 206.png'),
                            width: 50,
                            height: 50),
                        SizedBox(width: 9),
                        Expanded(
                          child: Text('Shopify Design and\nDevelopment',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        ),
                      ]),
                      const SizedBox(height: 13),
                      Row(children: const [
                        SizedBox(width: 17),
                        Image(
                            image: AssetImage('assets/image 207.png'),
                            width: 50,
                            height: 50),
                        SizedBox(width: 9),
                        Text('Shopify Theme Development',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
                      ]),
                      const SizedBox(height: 13),
                      Row(children: const [
                        SizedBox(width: 17),
                        Image(
                            image: AssetImage('assets/image 208.png'),
                            width: 50,
                            height: 50),
                        SizedBox(width: 9),
                        Expanded(
                          child: Text('Shopify App Development',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        ),
                      ]),
                      const SizedBox(height: 13),
                      Row(children: const [
                        SizedBox(width: 17),
                        Image(
                            image: AssetImage('assets/image 209.png'),
                            width: 50,
                            height: 50),
                        SizedBox(width: 9),
                        Expanded(
                          child: Text('Migration to Shopify',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400)),
                        ),
                      ]),
                      const SizedBox(height: 13),
                      Row(children: const [
                        SizedBox(width: 17),
                        Image(
                            image: AssetImage('assets/image 210.png'),
                            width: 50,
                            height: 50),
                        SizedBox(width: 9),
                        Text('3rd Party Api Development',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400)),
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
