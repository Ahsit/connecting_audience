// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ricoz_app/Screen/Ads%20Management/facebookads.dart';
import 'package:ricoz_app/Screen/Ads%20Management/googleads.dart';
import 'package:ricoz_app/Screen/Ads%20Management/instagramads.dart';
import 'package:ricoz_app/Screen/Ads%20Management/linkedinads.dart';
import 'package:ricoz_app/Screen/Ads%20Management/twitterads.dart';
import 'package:ricoz_app/Screen/Ads%20Management/youtubeads.dart';
import 'package:ricoz_app/Screen/Handling/Facebook.dart';
import 'package:ricoz_app/Screen/Handling/GMB.dart';
import 'package:ricoz_app/Screen/Handling/Instagram.dart';
import 'package:ricoz_app/Screen/Handling/Linkedin.dart';
import 'package:ricoz_app/Screen/Handling/Pinterest.dart';
import 'package:ricoz_app/Screen/Handling/Sharechat.dart';
import 'package:ricoz_app/Screen/Handling/Snapchat.dart';
import 'package:ricoz_app/Screen/Handling/Tumblr.dart';
import 'package:ricoz_app/Screen/Handling/Twitter.dart';
import 'package:ricoz_app/Screen/Handling/Youtube.dart';
import 'package:ricoz_app/Screen/courses/Adwords.dart';
import 'package:ricoz_app/Screen/courses/add_management.dart';
import 'package:ricoz_app/Screen/courses/performance_marketing.dart';
import 'package:ricoz_app/Screen/courses/services_final/ads_management.dart';
import 'package:ricoz_app/Screen/courses/services_final/ads_manager.dart';
import 'package:ricoz_app/Screen/courses/services_final/digital_marketing.dart';
import 'package:ricoz_app/Screen/courses/services_final/google_adwords.dart';
import 'package:ricoz_app/Screen/courses/services_final/graphic_design.dart';
import 'package:ricoz_app/Screen/courses/services_final/shopify_development.dart';
import 'package:ricoz_app/Screen/courses/services_final/website_development.dart';
import 'package:ricoz_app/Screen/courses/social_media_management.dart';
import 'package:ricoz_app/Screen/courses/web_design.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/Notification_page.dart';
import 'package:ricoz_app/pages/cart_page.dart';
import 'package:ricoz_app/pages/expandedSection/About_us.dart';
import 'package:ricoz_app/pages/menu_page.dart';
import 'package:ricoz_app/pages/offers_page.dart';
import 'package:ricoz_app/pages/search_page.dart';
import 'package:video_player/video_player.dart';

import '../Screen/courses/Digital_marketing.dart';
import '../Screen/courses/graphics_design.dart';
import '../Screen/courses/services_final/socialmedia.dart';
import '../Screen/courses/video_edit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int carouselIndex = 0;
  int carouselIndexx = 0;
  List<String> imageUrls = [
    'assets/slide1.jpg',
    'assets/slide2.jpg',
    'assets/slide3.jpg',
    'assets/slide4.png',
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
  List<String> imageUrls5 = [
    'assets/courseslider/adsmanagement.png',
    'assets/courseslider/marketingmanagement.png',
    'assets/courseslider/socialmediacourse.png',
    'assets/courseslider/seo.png',
    'assets/courseslider/videoediting.png',
    'assets/courseslider/emailmarketing.png',
    'assets/courseslider/webdesign.png',
    'assets/courseslider/graphic.png',
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
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, left: 15),
                        child: CarouselSlider(
                          options: CarouselOptions(
                            aspectRatio: 16 / 7.5,
                            // autoPlay: true,
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
                                        image: AssetImage(
                                          entry.value,
                                        ),
                                        fit: BoxFit.fill),
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
                  Center(
                    child: Container(
                      height: 270,
                      width: width * 0.92,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(9)),
                          color: Color.fromRGBO(68, 1, 1, 1)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.0, left: 15),
                            child: Row(
                              children: const [
                                Text(' Services',
                                    style: TextStyle(
                                        fontSize: 23,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildSquareButton('Social Media\nManagement',
                                  'assets/image 158.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ServiceSMM(),
                                    ));
                              })),
                              buildSquareButton(
                                  ' Google\nAdwords', 'assets/image 181.png',
                                  (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ServiceGoogleAds(),
                                    ));
                              })),
                              buildSquareButton(
                                  'Graphics\n  Design', 'assets/image 160.png',
                                  (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ServiceGraphic(),
                                    ));
                              })),
                              buildSquareButton('        Ads\nManagement',
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
                              buildSquareButton(
                                  '   Ads\nManager', 'assets/image 165.png',
                                  (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ServiceAdsManager(),
                                    ));
                              })),
                              buildSquareButton('    Website\nDevelopment',
                                  'assets/image 166.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ServiceWebDev(),
                                    ));
                              })),
                              buildSquareButton('   Digital\nMarketing',
                                  'assets/image 168.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ServiceDigital(),
                                    ));
                              })),
                              buildSquareButton('    Shopify\nDevelopment',
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
                              _buildCircleImage('         Ads\nManagement',
                                  'assets/image 165.png', (() {
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
                              _buildCircleImage(' Video\nEditing',
                                  'assets/images/videoediting.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const VideoEd(),
                                    ));
                              })),
                              _buildCircleImage('   Google\n  Adwords',
                                  'assets/image 181.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const Adwordscourse(),
                                    ));
                              })),
                              _buildCircleImage('Performance\n   Marketing',
                                  'assets/images/marketmanagement.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Performance(),
                                    ));
                              })),
                              _buildCircleImage('    Digital\nMAerketing',
                                  'assets/images/seachengine.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const DigitalMarketing(),
                                    ));
                              })),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 150.0,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          VideoCard(
                            videoTitle: 'Video 1',
                            videoAsset:
                                'https://www.instagram.com/reel/Cs2Xm8LpmQi/?igshid=MzRlODBiNWFlZA%3D%3D.mp4',
                            onTap: () {
                              print('Video 1 tapped!');
                            },
                          ),
                          VideoCard(
                            videoTitle: 'Video 2',
                            videoAsset:
                                'https://www.instagram.com/reel/Cs2Xm8LpmQi/?igshid=MzRlODBiNWFlZA%3D%3D.mp4',
                            onTap: () {
                              print('Video 2 tapped!');
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
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
                                (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Facebook(),
                                      ));
                                }),
                              ),
                              _buildCircleImage(
                                  'Instagram', 'assets/logo18.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Instagram(),
                                    ));
                              })),
                              _buildCircleImage(
                                  'Linked in', 'assets/logo19.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Linkedin(),
                                    ));
                              })),
                              _buildCircleImage('Youtube', 'assets/logo20.png',
                                  (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Youtube(),
                                    ));
                              })),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildCircleImage('Twitter', 'assets/logo21.png',
                                  (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Twitter(),
                                    ));
                              })),
                              _buildCircleImage('SnapChat', 'assets/logo22.png',
                                  (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Snapchat(),
                                    ));
                              })),
                              _buildCircleImage(
                                  'Pinterest', 'assets/logo23.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Pinterest(),
                                    ));
                              })),
                              _buildCircleImage(
                                  'Google My\n Business', 'assets/logo24.png',
                                  (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const GMB(),
                                    ));
                              })),
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
                                    'ShareChat', 'assets/logo25.png', (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Sharechat(),
                                      ));
                                })),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: _buildCircleImage(
                                      'Tumblr', 'assets/logo26.png', (() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Tumblr(),
                                        ));
                                  })),
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
                                (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const Youtubeads(),
                                      ));
                                }),
                              ),
                              _buildCircleImage(
                                  'Google\n  Ads', 'assets/image 181.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const googleads(),
                                    ));
                              })),
                              _buildCircleImage(
                                  'FaceBook\n      Ads', 'assets/logo17.png',
                                  (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const facebookads(),
                                    ));
                              })),
                              _buildCircleImage(
                                  'Linked in\n     Ads', 'assets/logo19.png',
                                  (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const linkedinads(),
                                    ));
                              })),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 30, right: 30),
                                child: _buildCircleImage(
                                    'Instagram\n      Ads', 'assets/logo18.png',
                                    (() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const instagramads(),
                                      ));
                                })),
                              ),
                              _buildCircleImage(
                                  'Twitter\n  Ads', 'assets/logo21.png', (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const twitterads(),
                                    ));
                              })),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                height: 500,
                                width: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Pallete.whiteColor),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: Image.asset(
                                            'assets/review/1.png',
                                            height: 80,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          'Alex Dsouza',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Text(
                                        'I`ve been using Ricoz for managing my social media accounts for the past six months, and I must say, I`m extremely impressed. The platform offers a wide range of features that have significantly improved my social media presence. The scheduling tool is fantastic; it allows me to plan and publish my content in advance, ensuring a consistent posting schedule. The analytics dashboard provides detailed insights into my audience`s behavior, helping me tailor my content accordingly. Moreover, their customer support is top-notch, always prompt and helpful. I highly recommend Ricoz to anyone looking for a reliable social media service provider.',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                height: 500,
                                width: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Pallete.whiteColor),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: Image.asset(
                                            'assets/review/3.png',
                                            height: 80,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          'Daniel Pitorious',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Text(
                                        'Ricoz has been my go-to social media service provider for over a year now, and it has proven to be a valuable tool for my business. The platform offers a comprehensive set of features that cover all aspects of social media management. From content creation and scheduling to detailed analytics and competitor analysis,ricoz has it all. I appreciate the prompt customer support and regular updates with new features. However, I did experience occasional glitches and slow loading times, which can be frustrating when working on tight deadlines. Nevertheless, I highly recommend SocialNinja for anyone seeking a robust social media management solution.',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                height: 500,
                                width: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Pallete.whiteColor),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 10),
                                          child: Image.asset(
                                            'assets/review/2.jpeg',
                                            height: 80,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          'Biden Trump',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 20, top: 20),
                                      child: Text(
                                        'I cannot say enough good things about Ricoz. This social media service provider has completely transformed the way I manage my social media accounts. The platform offers a seamless and intuitive experience, allowing me to effortlessly schedule and publish my content across multiple platforms. The detailed insights into my audience`s behavior and engagement rates have helped me refine my social media strategy and achieve tangible results. The customer support team is responsive and always goes the extra mile to assist me. With Ricoz, I`ve seen a significant boost in my social media presence and engagement. I highly recommend it to anyone serious about maximizing their social media impact.',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
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
                                  fontWeight: FontWeight.w300, fontSize: 12),
                            ),
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    ),
                  ),
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
            SizedBox(
              height: 20,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 60,
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: SizedBox(
                        height: 35,
                        width: 105,
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

Widget buildSquareButton(
    String buttonText, String imagePath, VoidCallback onPressed) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      width: 70,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 255, 255, 255)
                .withOpacity(0.3), // shadow color
            offset: Offset(0, 3), // offset in the x and y direction
            blurRadius: 3, // spread radius
            spreadRadius: 1, // blur radius
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 25,
            height: 25,
          ),
          SizedBox(height: 10),
          Text(
            buttonText,
            style: TextStyle(
              color: Color.fromRGBO(99, 98, 98, 1),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  );
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

class VideoCard extends StatefulWidget {
  final String videoTitle;
  final String videoAsset;
  final Function()? onTap;

  VideoCard({required this.videoTitle, required this.videoAsset, this.onTap});

  @override
  _VideoCardState createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoAsset);
    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      setState(() {}); // Trigger a rebuild once the video is initialized
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleVideoPlayback() {
    if (_controller.value.isPlaying) {
      _controller.pause();
    } else {
      _controller.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _toggleVideoPlayback();
      },
      child: Container(
        width: 200.0,
        margin: EdgeInsets.all(8.0),
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }
}
/*SizedBox(height: 10),
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
                  ),*/