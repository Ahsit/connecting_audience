// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ricoz_app/Screen/courses/add_management.dart';
import 'package:ricoz_app/Screen/courses/email_marketing.dart';
import 'package:ricoz_app/Screen/courses/graphics_design.dart';
import 'package:ricoz_app/Screen/courses/market_strategy.dart';
import 'package:ricoz_app/Screen/courses/social_media_management.dart';
import 'package:ricoz_app/Screen/courses/video_edit.dart';
import 'package:ricoz_app/Screen/courses/web_design.dart';
import 'package:ricoz_app/Screen/courses/webs_dev.dart';
import 'package:ricoz_app/Screen/service%20Page/service1_socialmedia.dart';
import 'package:ricoz_app/Screen/service%20Page/service2_ads.dart';
import 'package:ricoz_app/Screen/service%20Page/service3_graphic.dart';
import 'package:ricoz_app/Screen/service%20Page/service4_ads.dart';
import 'package:ricoz_app/Screen/service%20Page/service5_adsmanager.dart';
import 'package:ricoz_app/Screen/service%20Page/service6_webdev.dart';
import 'package:ricoz_app/Screen/service%20Page/service7_digital.dart';
import 'package:ricoz_app/Screen/service%20Page/service8_shopify.dart';
import 'package:ricoz_app/pages/Notification_page.dart';
import 'package:ricoz_app/pages/cart_page.dart';
import 'package:ricoz_app/pages/expandedSection/About_us.dart';
import 'package:ricoz_app/pages/menu_page.dart';
import 'package:ricoz_app/pages/offers_page.dart';
import 'package:ricoz_app/pages/search_page.dart';
import 'package:ricoz_app/services_final/socialmedia.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int carouselIndex = 0;
  int carouselIndexx = 0;
  List<String> imageUrls = [
    'assets/slide1.png',
    'assets/slide2.png',
    'assets/slide3.png',
    'assets/slide4.png',
  ];
  List<String> imageUrls2 = [
    'assets/slide5.png',
    'assets/slide6.png',
    'assets/slide7.png',
    'assets/slide8.png',
  ];
  List<String> imageUrls3 = [
    'assets/slide9.jpeg',
    'assets/slide10.jpeg',
    'assets/slide11.jpeg',
    'assets/slide12.png',
  ];
  List<String> imageUrls4 = [
    'assets/slide13.jpeg',
    'assets/slide14.jpeg',
    'assets/slide15.png',
    'assets/slide16.png',
  ];
  List<String> imageText = [
    'Social Media Management',
    'Google Ads',
    'Graphic Design',
    'Ads Management'
  ];
  List<String> imageText2 = [
    'Social Media Management',
    'Google Ads',
    'Graphic Design',
  ];
  List<String> imageText3 = ['Facebook', 'Instagram', 'Linked in', 'Twitter,'];
  List<String> imageText4 = [
    'Google Ads',
    'Youtube Ads',
    'facebbok Ads',
    'Twitter Ads'
  ];
  bool _isExpanded = false;

  final List<String> _options = [
    'About Us',
    'Culture',
    'Investors',
    'Careers',
    'Contact Us',
    'Our Benefits',
    'Site Map'
  ];
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(68, 1, 1, 1),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: const Image(
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
                    icon: Icon(
                      Icons.notifications,
                      size: 30,
                    ))
              ],
            )
          ];
        },
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Image(image: AssetImage('assets/test.png')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 15),
                        child: CarouselSlider(
                          options: CarouselOptions(
                            aspectRatio: 16 / 9,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                carouselIndex = index;
                              });
                            },
                          ),
                          items: imageUrls.asMap().entries.map((entry) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  height: 191,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    image: DecorationImage(
                                      image: AssetImage(entry.value),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.6),
                                          BlendMode.dstATop),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Center(
                                      child: Text(
                                        imageText[entry.key],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageUrls.asMap().entries.map((entry) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.white,
                          foregroundColor: entry.key == carouselIndex
                              ? Colors.black
                              : Colors.grey,
                          child: Text(
                            entry.key == carouselIndex ? '\u2022' : '\u25E6',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 26),
                  Center(
                    child: Container(
                      height: 280,
                      width: width * 0.92,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          color: Color.fromRGBO(255, 217, 218, 1)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.0, left: 15),
                            child: Row(
                              children: const [
                                Text(' Services',
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildCircleImage('Social Media\nManagement',
                                  'assets/image 158.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ServiceSMM(),
                                    ));
                              })),
                              _buildCircleImage(
                                  ' Google\nAdwords', 'assets/image 181.png',
                                  (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ServiceGoogleAds(),
                                    ));
                              })),
                              _buildCircleImage(
                                  'Graphics\n  Design', 'assets/image 160.png',
                                  (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ServiceGraphicDes(),
                                    ));
                              })),
                              _buildCircleImage('        Ads\nManagement',
                                  'assets/image 161.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ServiceAdsManage(),
                                    ));
                              })),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildCircleImage(
                                  '   Ads\nManager', 'assets/image 165.png',
                                  (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ServiceAdsManager(),
                                    ));
                              })),
                              _buildCircleImage('    Website\nDevelopment',
                                  'assets/image 166.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ServiceWebDev(),
                                    ));
                              })),
                              _buildCircleImage('   Digital\nMarketing',
                                  'assets/image 168.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ServiceDig(),
                                    ));
                              })),
                              _buildCircleImage('    Shopify\nDevelopment',
                                  'assets/image 170.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ServiceShopify(),
                                    ));
                              })),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 33),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 15),
                        child: CarouselSlider(
                          options: CarouselOptions(
                            aspectRatio: 16 / 9,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                carouselIndex = index;
                              });
                            },
                          ),
                          items: imageUrls.asMap().entries.map((entry) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  height: 191,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    image: DecorationImage(
                                      image: AssetImage(entry.value),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.6),
                                          BlendMode.dstATop),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Center(
                                      child: Text(
                                        imageText[entry.key],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageUrls.asMap().entries.map((entry) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.white,
                          foregroundColor: entry.key == carouselIndex
                              ? Colors.black
                              : Colors.grey,
                          child: Text(
                            entry.key == carouselIndex ? '\u2022' : '\u25E6',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 26),
                  Center(
                    child: Container(
                      height: 280,
                      width: width * 0.92,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          color: Color.fromRGBO(255, 217, 218, 1)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.0, left: 23),
                            child: Row(
                              children: const [
                                Text('Courses',
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildCircleImage('Social Media\n     Courses',
                                  'assets/images/socialmediacourse.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SocialMedia(),
                                    ));
                              })),
                              _buildCircleImage(
                                  'Graphic Desigb\n       Courses',
                                  'assets/images/graphicsdesigncourse.png',
                                  (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const GraphicDesign(),
                                    ));
                              })),
                              _buildCircleImage('Web Design\n   Courses',
                                  'assets/images/webdesigncourse.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const WebDesign(),
                                    ));
                              })),
                              _buildCircleImage(
                                  '    Ads\nManager', 'assets/image 165.png',
                                  (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const AdsManagement(),
                                    ));
                              })),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildCircleImage('Video\nEditing',
                                  'assets/images/videoediting.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const VideoEd(),
                                    ));
                              })),
                              _buildCircleImage('   Email\nMarketing',
                                  'assets/images/emailmarketing.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const EmailMarket(),
                                    ));
                              })),
                              _buildCircleImage('     Market\nManagement',
                                  'assets/images/marketmanagement.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const WebDev(),
                                    ));
                              })),
                              _buildCircleImage('  Search\n   Engine',
                                  'assets/images/seachengine.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const StrategyMarket(),
                                    ));
                              })),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 33),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 15),
                        child: CarouselSlider(
                          options: CarouselOptions(
                            aspectRatio: 16 / 9,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                carouselIndex = index;
                              });
                            },
                          ),
                          items: imageUrls3.asMap().entries.map((entry) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  height: 191,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    image: DecorationImage(
                                      image: AssetImage(entry.value),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.6),
                                          BlendMode.dstATop),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Center(
                                      child: Text(
                                        imageText3[entry.key],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageUrls3.asMap().entries.map((entry) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.white,
                          foregroundColor: entry.key == carouselIndex
                              ? Colors.black
                              : Colors.grey,
                          child: Text(
                            entry.key == carouselIndex ? '\u2022' : '\u25E6',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 26),
                  Center(
                    child: Container(
                      height: 350,
                      width: 360,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          color: Color.fromRGBO(255, 217, 218, 1)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.0, left: 15),
                            child: Row(
                              children: const [
                                Text('Handling',
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildCircleImage(
                                'Facebook',
                                'assets/logo17.png',
                                (() {}),
                              ),
                              _buildCircleImage(
                                  'Instagram', 'assets/logo18.png', (() {})),
                              _buildCircleImage(
                                  'Linked in', 'assets/logo19.png', (() {})),
                              _buildCircleImage(
                                  'Youtube', 'assets/logo20.png', (() {})),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildCircleImage(
                                  'Twitter', 'assets/logo21.png', (() {})),
                              _buildCircleImage(
                                  'SnapChat', 'assets/logo22.png', (() {})),
                              _buildCircleImage(
                                  'Pinterest', 'assets/logo23.png', (() {})),
                              _buildCircleImage('Google My\n   Business',
                                  'assets/logo24.png', (() {})),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                                _buildCircleImage(
                                    'ShareChat', 'assets/logo25.png', (() {})),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: _buildCircleImage(
                                      'Tumblr', 'assets/logo26.png', (() {})),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 33),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 15),
                        child: CarouselSlider(
                          options: CarouselOptions(
                            aspectRatio: 16 / 9,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                carouselIndex = index;
                              });
                            },
                          ),
                          items: imageUrls4.asMap().entries.map((entry) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  height: 191,
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    image: DecorationImage(
                                      image: AssetImage(entry.value),
                                      fit: BoxFit.cover,
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.6),
                                          BlendMode.dstATop),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Center(
                                      child: Text(
                                        imageText4[entry.key],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 27,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          }).toList(),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageUrls4.asMap().entries.map((entry) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: Colors.white,
                          foregroundColor: entry.key == carouselIndex
                              ? Colors.black
                              : Colors.grey,
                          child: Text(
                            entry.key == carouselIndex ? '\u2022' : '\u25E6',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 26),
                  Center(
                    child: Container(
                      height: 270,
                      width: 360,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          color: Color.fromRGBO(255, 217, 218, 1)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.0, left: 15),
                            child: Row(
                              children: const [
                                Text('Ads Management',
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildCircleImage(
                                'Youtube\n    Ads',
                                'assets/logo20.png',
                                (() {}),
                              ),
                              _buildCircleImage('Google\n  Ads',
                                  'assets/image 181.png', (() {})),
                              _buildCircleImage('FaceBook\n      Ads',
                                  'assets/logo17.png', (() {})),
                              _buildCircleImage('Linked in\n     Ads',
                                  'assets/logo19.png', (() {})),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 30),
                                child: _buildCircleImage('Instagram\n      Ads',
                                    'assets/logo18.png', (() {})),
                              ),
                              _buildCircleImage('Twitter\n  Ads',
                                  'assets/logo21.png', (() {})),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                      height: 40,
                      width: 400,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 84, 47, 21),
                          ),
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 80),
                                child: Text(
                                  'Know more about social media at ricoz',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 12),
                                ),
                              ),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ))),
                  Container(
                    height: 50,
                    color: Color.fromARGB(255, 84, 47, 21),
                  ),
                  Visibility(
                    visible: isVisible,
                    child: Container(
                      color: Color.fromARGB(255, 84, 47, 21),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 34.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 30),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Text(
                                          'RICOZ',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      const Divider(
                                        color: Colors.white, //color of divider
                                        height: 5, //height spacing of divider
                                        thickness: 1, //thickness of divier line
                                        indent:
                                            5, //spacing at the start of divider
                                        endIndent:
                                            5, //spacing at the end of divider
                                      ),
                                      const SizedBox(height: 14),
                                      if (_isExpanded)
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            for (String option in _options)
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 5,
                                                        horizontal: 10),
                                                child: InkWell(
                                                  onTap: () {
                                                    Navigator.push(context,
                                                        MaterialPageRoute(
                                                            builder:
                                                                (BuildContext
                                                                    context) {
                                                      return AboutUs();
                                                    }));
                                                  },
                                                  child: Text(
                                                    option,
                                                    style: const TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                          ],
                                        ),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _isExpanded = !_isExpanded;
                                    });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Icon(
                                        _isExpanded ? Icons.remove : Icons.add,
                                        size: 30,
                                        color:
                                            Color.fromRGBO(224, 204, 156, 1)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    height: 30,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        border: Border.all(
                                            width: 2, color: Colors.white)),
                                    child: const Center(
                                        child: Text('Download for IOS',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white)))),
                                Container(
                                    height: 30,
                                    width: 140,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(13),
                                        border: Border.all(
                                            width: 2, color: Colors.white)),
                                    child: const Center(
                                        child: Text('Download for Android',
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.white)))),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 70.0, right: 50.0),
                            child: Row(children: const [
                              ClipOval(
                                  child: Image(
                                image: AssetImage('assets/images/fb.png'),
                                width: 40,
                                height: 40,
                              )),
                              SizedBox(width: 10),
                              ClipOval(
                                  child: Image(
                                image: AssetImage('assets/images/insta.png'),
                                width: 40,
                                height: 40,
                              )),
                              SizedBox(width: 10),
                              ClipOval(
                                  child: Image(
                                image: AssetImage('assets/images/twitter.png'),
                                width: 40,
                                height: 40,
                              )),
                              SizedBox(width: 10),
                              ClipOval(
                                  child: Image(
                                image: AssetImage('assets/images/linked.png'),
                                width: 40,
                                height: 40,
                              )),
                              SizedBox(width: 10),
                              ClipOval(
                                  child: Image(
                                image: AssetImage('assets/images/youtube.png'),
                                width: 40,
                                height: 40,
                              )),
                            ]),
                          ),
                          const SizedBox(height: 21),
                          const Divider(
                            color: Color.fromRGBO(
                                224, 204, 156, 1), //color of divider
                            height: 5, //height spacing of divider
                            thickness: 1, //thickness of divier line
                            indent: 0, //spacing at the start of divider
                            endIndent: 0, //spacing at the end of divider
                          ),
                          const SizedBox(height: 18),
                          const Center(
                              child: Image(
                                  image: AssetImage('assets/image 1 (4).png'),
                                  width: 110,
                                  height: 50)),
                          const SizedBox(height: 15),
                          const Text('© 2023. First Ricoz Pvt. Ltd.',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              )),
                          const SizedBox(height: 80),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 50,
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: SizedBox(
                        height: 35,
                        width: 101,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shadowColor: Colors.transparent,
                              backgroundColor:
                                  Color.fromARGB(174, 235, 235, 235),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          onPressed: () {},
                          child: Wrap(
                            children: <Widget>[
                              Image.asset(
                                "assets/home2.png",
                                width: 20,
                              ),
                              SizedBox(
                                width: 05,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Text("Home",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
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
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: const Image(
                                image: AssetImage('assets/searchon.jpg'),
                                width: 20,
                                height: 20),
                          ),
                        )),
                    InkWell(
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
                            color: Color.fromARGB(255, 89, 84, 84),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: const Image(
                                image: AssetImage('assets/discount.png'),
                                width: 20,
                                height: 20),
                          ),
                        )),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Cart(),
                              ));
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color.fromARGB(255, 89, 84, 84),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Image(
                                image: AssetImage('assets/cart.png'),
                                width: 20,
                                height: 20),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildCircleImage(String label, String img, VoidCallback press) {
  return Column(
    children: [
      GestureDetector(
        onTap: press,
        child: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color.fromRGBO(68, 1, 1, 1),
              width: 2,
            ),
          ),
          child: Center(
            child: Image.asset(
              img,
              width: 45,
              height: 45,
            ),
          ),
        ),
      ),
      SizedBox(height: 10),
      Align(
        alignment: Alignment.center,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(126, 125, 125, 1),
          ),
        ),
      ),
    ],
  );
}
