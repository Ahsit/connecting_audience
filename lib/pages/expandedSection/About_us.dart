// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:ricoz_app/pages/menu_page.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/expandedSection/Investor.dart';
import 'package:ricoz_app/pages/expandedSection/careers.dart';
import 'package:ricoz_app/pages/expandedSection/contact.dart';
import 'package:ricoz_app/pages/expandedSection/cuture.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.brown,
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
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: 3950,
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xFFEBEAEA)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 630,
                        color: Color.fromARGB(255, 84, 47, 21),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "About us",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Pallete.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Container(
                                    height: 2, width: 80, color: Pallete.black)
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Culture();
                                }));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, top: 3),
                                child: Text(
                                  "Culture",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Pallete.fontcolor2,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return InvestorsPage();
                                }));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, top: 3),
                                child: Text(
                                  "Investors",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Pallete.fontcolor2,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Careers();
                                }));
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 50, top: 3),
                                child: Text(
                                  "Career",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Pallete.fontcolor2,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Contact();
                                }));
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 50, top: 3, right: 30),
                                child: Text(
                                  "Contact",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Pallete.fontcolor2,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 120,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        "assets/images/aboutus.png",
                        width: 335,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27, right: 30),
                  child: Text(
                    "''If you're gonna innovate something the world has never seen, there's probably gonna be a pretty good story behind how you got there. This is ours.''",
                    style: TextStyle(
                        color: Color.fromARGB(255, 88, 88, 88),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Lora"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: Text(
                    'THE SHORT VERSION:',
                    style: TextStyle(
                        color: Color.fromARGB(255, 88, 88, 88),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Lora"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27, right: 25),
                  child: Text(
                    "Don and Carissa Niemyer were always interested in minimalism.  They accidentally became really good at it when they moved ''temporarily'' into 99 square feet of living space with their two kids and ended up staying there for almost 4 years.  A year of that was spent traveling the nation, visiting over 200 great coffee shops in 45 states, getting inspiration, and dreaming about their next coffee move.  These experiences culminated in the idea to create a Tiny House Coffee Shop.  After searching around for others who had done this and finding nothing, they decided to do it anyway, becoming the first people in the world that they know of to build a Tiny House Coffee Shop where customers come inside.  It's sitting in Downtown Colorado Spring's Acacia Park right this very minute, serving up great coffee in a simple yet elegant environment.  And the Niemyers are having the time of their lives. ",
                    style: TextStyle(
                        color: Color.fromARGB(255, 88, 88, 88),
                        fontSize: 18,
                        fontFamily: "Lora"),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        "assets/images/aboutus2.png",
                        width: 335,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: Text(
                    'THE SHORT VERSION:',
                    style: TextStyle(
                        color: Color.fromARGB(255, 88, 88, 88),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Lora"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27, right: 25),
                  child: Text(
                    "The Story Coffee team spent the next 3 months testing the limits of their creation.  Because of their location in Acacia Park, they were right in the middle of many holiday events.  The Christmas Parade.  Downtown's Small Business Saturday. And the lighting of the holiday Christmas tree.  On these days, the odd little shop in the middle of the park was nearly overwhelmed, but it performed marvelously, funneling lines in one door and out the other, just like it was designed to do!  Between these events and over 15,000 ice skaters that year, they had a pretty good business going.  They were sharing the ''stories'' of coffees and people they had encountered on their national coffee crawl, trying to honor those artisans by presenting their coffees as elegantly as possible.  But it was all too good to last long, it seemed, as the ice skating rink closed in January and Story Coffee continued looking for a permanent home.  Then they found out it actually was NOT too good to last, because the Parks Department called one day.  They'd had pretty good feedback about the little shop being in the park, as it turned out.  The shop met some of their goals related to making Acacia Park an attractive place for citizens to come enjoy a beautiful space with various amenities.  Plus it helped make things safer, with extra eyes and ears looking around.  So they asked if there was any interest in Story staying in the park, to which Don said they'd need to move to a more visible location, and everyone agreed that next to the historic band shell on Bijou Street would be perfect!  So in March of 2016 the relocation was executed, a deck and a proper ADA ramp were installed, and Story Coffee celebrated its official grand opening in April of 2016.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 88, 88, 88),
                        fontSize: 18,
                        fontFamily: "Lora"),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    height: 450,
                    width: 330,
                    decoration: BoxDecoration(color: Color(0xFFF7ACA5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "OUR MISSION",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF3D3D3D)),
                        ),
                        Container(
                          height: 2,
                          width: 190,
                          color: Color(0xFF3D3D3D),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          "assets/images/aboutus3.png",
                          width: 250,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, left: 20, top: 20),
                          child: Text(
                            "Our vision is to decouple\nbusiness growth and \necological footprint from its\noperations to address the\nenvironment bottom-line. The\ngreen approach is embedded\nin our internal processes and\nservices offerings.",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27),
                  child: Text(
                    'THE DREAM CONTINUES',
                    style: TextStyle(
                        color: Color.fromARGB(255, 88, 88, 88),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Lora"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 27, right: 25),
                  child: Text(
                    "The Story Coffee team spent the next 3 months testing the limits of their creation.  Because of their location in Acacia Park, they were right in the middle of many holiday events.  The Christmas Parade.  Downtown's Small Business Saturday. And the lighting of the holiday Christmas tree.  On these days, the odd little shop in the middle of the park was nearly overwhelmed, but it performed marvelously, funneling lines in one door and out the other, just like it was designed to do!  Between these events and over 15,000 ice skaters that year, they had a pretty good business going.  They were sharing the ''stories'' of coffees and people they had encountered on their national coffee crawl, trying to honor those artisans by presenting their coffees as elegantly as possible.  But it was all too good to last long, it seemed, as the ice skating rink closed in January and Story Coffee continued looking for a permanent home.  Then they found out it actually was NOT too good to last, because the Parks Department called one day.  They'd had pretty good feedback about the little shop being in the park, as it turned out.  The shop met some of their goals related to making Acacia Park an attractive place for citizens to come enjoy a beautiful space with various amenities.  Plus it helped make things safer, with extra eyes and ears looking around.  So they asked if there was any interest in Story staying in the park, to which Don said they'd need to move to a more visible location, and everyone agreed that next to the historic band shell on Bijou Street would be perfect!  So in March of 2016 the relocation was executed, a deck and a proper ADA ramp were installed, and Story Coffee celebrated its official grand opening in April of 2016.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 88, 88, 88),
                        fontSize: 18,
                        fontFamily: "Lora"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Image.asset(
                    "assets/images/ricoz.png",
                    height: 50,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
