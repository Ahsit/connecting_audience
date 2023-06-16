// ignore_for_file: unnecessary_const

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/Notification_page.dart';
import 'package:ricoz_app/pages/cart_page_item.dart';
import 'package:ricoz_app/pages/checkout.dart';
import 'package:ricoz_app/pages/home_page.dart';
import 'package:ricoz_app/pages/menu_page.dart';
import 'package:ricoz_app/pages/offers_page.dart';
import 'package:ricoz_app/pages/search_page.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final TextEditingController _promoCodeController = TextEditingController();
  bool _showPromoCodes = false;
  String _appliedPromoCode = '';

  final List _availablePromoCodes = [
    PromoCode(
      name: 'Personal Offer',
      code: 'mypromocode2020',
      imagePath: 'assets/promocode1.png',
    ),
    PromoCode(
      name: 'Summer Sale',
      code: 'summer2020',
      imagePath: 'assets/promocode2.png',
    ),
    PromoCode(
      name: 'Personal Offer',
      code: 'mypromocode2023',
      imagePath: 'assets/promocode3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              snap: true,
              backgroundColor: const Color.fromRGBO(68, 1, 1, 1),
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
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Image(
                    image: AssetImage('assets/image 125 (4).png'),
                  ),
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Notifications(),
                          ));
                    },
                    icon: const Icon(
                      Icons.notifications,
                      size: 30,
                    ))
              ],
            )
          ];
        },
        body: FadeIn(
          duration: const Duration(seconds: 1),
          child: Stack(
            children: [
              SizedBox(
                height: 1300,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: const EdgeInsets.only(left: 15, top: 30),
                        child: Text(
                          'My Cart',
                          style: TextStyle(
                              fontSize: 34, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const CartItem(),
                      const CartItem(),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _showPromoCodes = false;
                          });
                        },
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 330,
                                child: TextField(
                                  controller: _promoCodeController,
                                  decoration: const InputDecoration(
                                    hintText: 'Enter Promo Code',
                                  ),
                                  onTap: () {
                                    setState(() {
                                      _showPromoCodes = true;
                                    });
                                  },
                                ),
                              ),
                              const SizedBox(height: 10),
                              Visibility(
                                visible: _showPromoCodes,
                                child: Container(
                                  height: 300,
                                  width: double.infinity,
                                  color: Colors.grey[200],
                                  child: ListView.builder(
                                    itemCount: _availablePromoCodes.length,
                                    itemBuilder: (context, index) {
                                      final promoCode =
                                          _availablePromoCodes[index];

                                      return ListTile(
                                        leading: Image.asset(
                                          promoCode.imagePath,
                                          height: 80,
                                          width: 80,
                                        ),
                                        title: Text(promoCode.name,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500)),
                                        subtitle: Text(promoCode.code,
                                            style: const TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400)),
                                        onTap: () {
                                          setState(() {
                                            _appliedPromoCode = promoCode.name;
                                            _promoCodeController.text =
                                                _appliedPromoCode;
                                            _showPromoCodes = false;
                                          });
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Text('Applied Promo Code:  $_appliedPromoCode',
                                  style: const TextStyle(
                                      color:
                                          Color.fromARGB(255, 115, 112, 112))),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 28),
                      const Row(
                        children: [
                          SizedBox(width: 16),
                          Text('Total Amount :',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 115, 112, 112),
                                  fontSize: 16)),
                          SizedBox(width: 160),
                          Icon(Icons.currency_rupee),
                          Text('39,999',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600)),
                          SizedBox(height: 25),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Center(
                        child: SizedBox(
                          height: 50,
                          width: 300,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(68, 1, 1, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const CheckOut(),
                                    ));
                              },
                              child: const Text(
                                'Checkout',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Roboto Slab',
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FadeIn(
                        duration: const Duration(seconds: 1),
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomePage(),
                                  ));
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color.fromARGB(255, 89, 84, 84),
                              ),
                              child: const Image(
                                  image: AssetImage('assets/homeimg.jpg'),
                                  width: 20,
                                  height: 20),
                            )),
                      ),
                      FadeIn(
                        duration: const Duration(seconds: 1),
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SearchPage(),
                                  ));
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                              child: const Image(
                                  image: AssetImage('assets/searchon.jpg'),
                                  width: 20,
                                  height: 20),
                            )),
                      ),
                      FadeIn(
                        duration: const Duration(seconds: 1),
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Offers(),
                                  ));
                            },
                            child: Ink(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: const Color.fromARGB(255, 89, 84, 84),
                              ),
                              child: const Image(
                                  image: AssetImage('assets/discount.png'),
                                  width: 20,
                                  height: 20),
                            )),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: FadeIn(
                          duration: const Duration(seconds: 1),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shadowColor: Colors.transparent,
                                backgroundColor:
                                    const Color.fromARGB(174, 235, 235, 235),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            onPressed: () {},
                            child: Wrap(
                              children: <Widget>[
                                Image.asset(
                                  "assets/cart2.png",

                                  // width: 20,
                                ),
                                //  const SizedBox(
                                //   width: 05,
                                // ),
                                // const Padding(
                                //   padding: EdgeInsets.only(top: 2),
                                //   child: Text("Orders",
                                //       style: TextStyle(
                                //           fontSize: 16,
                                //           color: Colors.black,
                                //           fontWeight: FontWeight.w400)),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PromoCode {
  final String name;
  final String code;
  final String imagePath;

  PromoCode({
    required this.name,
    required this.code,
    required this.imagePath,
  });
}
/*Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(width: 16),
                                                Image.asset(
                                                  promoCode.imagePath,
                                                  height: 80,
                                                  width: 80,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 14.0),
                                                  child: Column(
                                                    children: [
                                                      Text(promoCode.name,
                                                          style: const TextStyle(
                                                              fontSize: 15,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600)),
                                                      SizedBox(height: 5),
                                                      Text(promoCode.code,
                                                          style: const TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400))
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 50),
                                                Container(
                                                    width: 93,
                                                    height: 36,
                                                    decoration: BoxDecoration(
                                                        color: Color.fromRGBO(
                                                            68, 1, 1, 1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(25)))
                                              ],
                                            ),*/