// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:animate_do/animate_do.dart';
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
import 'package:ricoz_app/pages/components/bottomnavigation.dart';
import 'package:ricoz_app/pages/components/carousel.dart';
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
    'assets/slide4.jpg',
    'assets/slide6.png',
    'assets/slide7.png',
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

  bool _isExpanded = true;

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
            ),
          ];
        },
        body: FadeIn(
          duration: Duration(seconds: 1),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: SizedBox(
                  height: 2800,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 15.0, left: 15),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: CircleAvatar(
                                radius: 4,
                                backgroundColor: Colors.white,
                                foregroundColor: entry.key == carouselIndex
                                    ? Colors.black
                                    : Colors.grey,
                                child: Text(
                                  entry.key == carouselIndex
                                      ? '\u2022'
                                      : '\u25E6',
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9)),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    buildSquareButton(
                                        'Social Media\nManagement',
                                        'assets/service_icons/social media management.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ServiceSMM(),
                                          ));
                                    })),
                                    buildSquareButton(' Google\nAdwords',
                                        'assets/service_icons/google adwords.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ServiceGoogleAds(),
                                          ));
                                    })),
                                    buildSquareButton('Graphics\n  Design',
                                        'assets/service_icons/graphics design.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ServiceGraphic(),
                                          ));
                                    })),
                                    buildSquareButton('        Ads\nManagement',
                                        'assets/service_icons/ads management.png',
                                        (() {
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    buildSquareButton('   Ads\nManager',
                                        'assets/service_icons/ads manager.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ServiceAdsManager(),
                                          ));
                                    })),
                                    buildSquareButton(
                                        '    Website\nDevelopment',
                                        'assets/service_icons/web development.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ServiceWebDev(),
                                          ));
                                    })),
                                    buildSquareButton('   Digital\nMarketing',
                                        'assets/service_icons/digital marketing.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ServiceDigital(),
                                          ));
                                    })),
                                    buildSquareButton(
                                        '    Shopify\nDevelopment',
                                        'assets/service_icons/shopify development.png',
                                        (() {
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

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Our Highlights',
                            style: TextStyle(
                                color: Pallete.whiteColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 400,
                          //color: Colors.blue,
                          child: RicozVideoCarousel(),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 15.0, left: 15),
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
                                items: imageUrls5.asMap().entries.map((entry) {
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
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: imageUrls5.asMap().entries.map((entry) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: CircleAvatar(
                                radius: 4,
                                backgroundColor: Colors.white,
                                foregroundColor: entry.key == carouselIndex
                                    ? Colors.black
                                    : Colors.grey,
                                child: Text(
                                  entry.key == carouselIndex
                                      ? '\u2022'
                                      : '\u25E6',
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9)),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _buildCircleImage(
                                        'Social Media\n     Courses',
                                        'assets/course_icons/Social media course.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const SocialMedia(),
                                          ));
                                    })),
                                    _buildCircleImage(
                                        'Graphic Desigb\n       Courses',
                                        'assets/course_icons/Graphic design course.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const GraphicDesign(),
                                          ));
                                    })),
                                    _buildCircleImage('Web Design\n   Courses',
                                        'assets/course_icons/web development course.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const WebDesign(),
                                          ));
                                    })),
                                    _buildCircleImage(
                                        '         Ads\nManagement',
                                        'assets/course_icons/Ads management course.png',
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _buildCircleImage(' Video\nEditing',
                                        'assets/course_icons/video editing.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const VideoEd(),
                                          ));
                                    })),
                                    _buildCircleImage('   Google\n  Adwords',
                                        'assets/course_icons/google adwords course.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const Adwordscourse(),
                                          ));
                                    })),
                                    _buildCircleImage(
                                        'Performance\n   Marketing',
                                        'assets/course_icons/Performance marketing course.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const Performance(),
                                          ));
                                    })),
                                    _buildCircleImage('    Digital\nMAerketing',
                                        'assets/course_icons/Digital Marketing course.png',
                                        (() {
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
                        SizedBox(
                          height: 15,
                        ),
                        Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 15.0, left: 15),
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
                                items: imageUrls3.asMap().entries.map((entry) {
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
                          children: imageUrls3.asMap().entries.map((entry) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: CircleAvatar(
                                radius: 4,
                                backgroundColor: Colors.white,
                                foregroundColor: entry.key == carouselIndex
                                    ? Colors.black
                                    : Colors.grey,
                                child: Text(
                                  entry.key == carouselIndex
                                      ? '\u2022'
                                      : '\u25E6',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        SizedBox(height: 15),
                        Center(
                          child: Container(
                            height: 350,
                            width: 360,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9)),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _buildCircleImage(
                                      'Facebook',
                                      'assets/handling_icon/facebook.png',
                                      (() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const Facebook(),
                                            ));
                                      }),
                                    ),
                                    _buildCircleImage('Instagram',
                                        'assets/handling_icon/instagram.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const Instagram(),
                                          ));
                                    })),
                                    _buildCircleImage('Linked in',
                                        'assets/handling_icon/linkedin.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const Linkedin(),
                                          ));
                                    })),
                                    _buildCircleImage('Youtube',
                                        'assets/handling_icon/youtube.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const Youtube(),
                                          ));
                                    })),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _buildCircleImage('Twitter',
                                        'assets/handling_icon/twitter.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const Twitter(),
                                          ));
                                    })),
                                    _buildCircleImage('SnapChat',
                                        'assets/handling_icon/snapchat.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const Snapchat(),
                                          ));
                                    })),
                                    _buildCircleImage('Pinterest',
                                        'assets/handling_icon/pinterest.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const Pinterest(),
                                          ));
                                    })),
                                    _buildCircleImage('Google My\n Business',
                                        'assets/handling_icon/business.png',
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
                                      _buildCircleImage('ShareChat',
                                          'assets/handling_icon/sharechat.png',
                                          (() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const Sharechat(),
                                            ));
                                      })),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 25),
                                        child: _buildCircleImage('Tumblr',
                                            'assets/handling_icon/Tumblr.png',
                                            (() {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Tumblr(),
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
                              padding:
                                  const EdgeInsets.only(right: 15.0, left: 15),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2.0),
                              child: CircleAvatar(
                                radius: 4,
                                backgroundColor: Colors.white,
                                foregroundColor: entry.key == carouselIndex
                                    ? Colors.black
                                    : Colors.grey,
                                child: Text(
                                  entry.key == carouselIndex
                                      ? '\u2022'
                                      : '\u25E6',
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(9)),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    _buildCircleImage(
                                      'Youtube\n    Ads',
                                      'assets/adsmanagement_icons/youtube.png',
                                      (() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const Youtubeads(),
                                            ));
                                      }),
                                    ),
                                    _buildCircleImage('Google\n  Ads',
                                        'assets/adsmanagement_icons/adwords.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const googleads(),
                                          ));
                                    })),
                                    _buildCircleImage('FaceBook\n      Ads',
                                        'assets/adsmanagement_icons/facebook.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const facebookads(),
                                          ));
                                    })),
                                    _buildCircleImage('Linked in\n     Ads',
                                        'assets/adsmanagement_icons/linkedin.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const linkedinads(),
                                          ));
                                    })),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 30, right: 30),
                                      child: _buildCircleImage(
                                          'Instagram\n      Ads',
                                          'assets/adsmanagement_icons/instagram.png',
                                          (() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const instagramads(),
                                            ));
                                      })),
                                    ),
                                    _buildCircleImage('Twitter\n  Ads',
                                        'assets/adsmanagement_icons/twitter.png',
                                        (() {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const twitterads(),
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
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/about.png',
                              width: 360,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 40,
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 84, 47, 21),
                            ),
                            onPressed: () {
                              setState(() {
                                if (isVisible = !isVisible) {
                                  _isExpanded = true;
                                } else {
                                  _isExpanded = false;
                                }
                              });
                            },
                            child: AnimatedOpacity(
                              opacity: _isExpanded ? 0.0 : 1.0,
                              duration: Duration(milliseconds: 500),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                              ),
                            ),
                          ),
                        ),
                        // Container(
                        //   height: 40,
                        //   color: Color.fromARGB(255, 84, 47, 21),
                        // ),
                        Visibility(
                          visible: isVisible,
                          child: Container(
                            color: Color.fromARGB(255, 84, 47, 21),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Over 10 thousand\nhappy customers',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ),
                                      SizedBox(
                                        width: 130,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Container(
                                              height: 330,
                                              width: 260,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Pallete.whiteColor),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                top: 10),
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
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20,
                                                            right: 20,
                                                            top: 20),
                                                    child: Text(
                                                      'I`ve been using Ricoz for managing my social media accounts for the past six months, and I must say, I`m extremely impressed. The platform offers a wide range of features that have significantly improved my social media presence. The scheduling tool is fantastic; it allows me to plan and publish my content in advance, ensuring a consistent posting schedule.',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400),
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
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Container(
                                              height: 330,
                                              width: 260,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Pallete.whiteColor),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                top: 10),
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
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20,
                                                            right: 20,
                                                            top: 20),
                                                    child: Text(
                                                      'Ricoz has been my go-to social media service provider for over a year now, and it has proven to be a valuable tool for my business.From content creation and scheduling to detailed analytics and competitor analysis,ricoz has it all. I appreciate the prompt customer support and regular updates with new features. However, ',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400),
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
                                            padding:
                                                const EdgeInsets.only(left: 20),
                                            child: Container(
                                              height: 330,
                                              width: 260,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Pallete.whiteColor),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 10,
                                                                top: 10),
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
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20,
                                                            right: 20,
                                                            top: 20),
                                                    child: Text(
                                                      'I cannot say enough good things about Ricoz. This social media service provider has completely transformed the way I manage my social media accounts. ',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
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
                                Padding(
                                  padding: const EdgeInsets.only(left: 34.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8),
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
                                              color: Colors
                                                  .white, //color of divider
                                              height:
                                                  5, //height spacing of divider
                                              thickness:
                                                  1, //thickness of divier line
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
                                                  for (String option
                                                      in _options)
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 5,
                                                          horizontal: 10),
                                                      child: InkWell(
                                                        onTap: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (BuildContext
                                                                          context) {
                                                            return AboutUs();
                                                          }));
                                                        },
                                                        child: Text(
                                                          option,
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .white),
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
                                              _isExpanded
                                                  ? Icons.remove
                                                  : Icons.add,
                                              size: 30,
                                              color: Color.fromRGBO(
                                                  224, 204, 156, 1)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 70.0, right: 50.0),
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
                                      image:
                                          AssetImage('assets/images/insta.png'),
                                      width: 40,
                                      height: 40,
                                    )),
                                    SizedBox(width: 10),
                                    ClipOval(
                                        child: Image(
                                      image: AssetImage(
                                          'assets/images/twitter.png'),
                                      width: 40,
                                      height: 40,
                                    )),
                                    SizedBox(width: 10),
                                    ClipOval(
                                        child: Image(
                                      image: AssetImage(
                                          'assets/images/linked.png'),
                                      width: 40,
                                      height: 40,
                                    )),
                                    SizedBox(width: 10),
                                    ClipOval(
                                        child: Image(
                                      image: AssetImage(
                                          'assets/images/youtube.png'),
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
                                        image: AssetImage(
                                            'assets/image 1 (4).png'),
                                        width: 110,
                                        height: 50)),
                                const SizedBox(height: 15),
                                Center(
                                  child: const Text(
                                      '© 2023. First Ricoz Pvt. Ltd.',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      )),
                                ),
                                const SizedBox(height: 80),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: FadeIn(
                          duration: Duration(seconds: 1),
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
                                  // width: 40,
                                ),
                                // SizedBox(
                                //   width: 05,
                                // ),
                                // Padding(
                                //   padding: const EdgeInsets.only(top: 2),
                                //   child: Text("Home",
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
                      FadeIn(
                        duration: Duration(seconds: 1),
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
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              child: const Image(
                                  image: AssetImage('assets/searchon.jpg'),
                                  width: 20,
                                  height: 20),
                            )),
                      ),
                      FadeIn(
                        duration: Duration(seconds: 1),
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
                                color: Color.fromARGB(255, 89, 84, 84),
                              ),
                              child: const Image(
                                  image: AssetImage('assets/discount.png'),
                                  width: 20,
                                  height: 20),
                            )),
                      ),
                      FadeIn(
                        duration: Duration(seconds: 1),
                        child: InkWell(
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
                              child: Image(
                                  image: AssetImage('assets/cart.png'),
                                  width: 20,
                                  height: 20),
                            )),
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
            width: 35,
            height: 35,
          ),
          SizedBox(height: 10),
          Text(
            buttonText,
            style: TextStyle(
              color: Color.fromRGBO(5, 5, 5, 1),
              fontSize: 10,
              fontWeight: FontWeight.w500,
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
              width: 35,
              height: 35,
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
            color: Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ),
    ],
  );
}
