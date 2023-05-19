// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/menu_page.dart';

import '../../Services/colors.dart';
import '../../pages/Notification_page.dart';
import '../../pages/home_page.dart';

class GMB extends StatefulWidget {
  const GMB({super.key});

  @override
  State<GMB> createState() => _GMBState();
}

class _GMBState extends State<GMB> {
  DateTime selectedDate = DateTime.now();
  double _sliderValue = 0.0;
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
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
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: SizedBox(
                        height: 30,
                        width: 20,
                        child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ));
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Pallete.whiteColor,
                              size: 15,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          },
                          child: Text(
                            "Course Detail",
                            style: TextStyle(
                                color: Pallete.whiteColor,
                                fontWeight: FontWeight.w400),
                          )),
                    )
                  ]),
                  Stack(children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Container(
                          height: 253.5,
                          width: 358,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/Handling/gmb.png'))),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: .3),
                      child: Container(
                        height: 253.5,
                        width: 360,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/Handling/rectangle1.png'))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 40),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/Handling/rectangle2.png',
                            height: 43,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            'assets/course/rectangle2.png',
                            height: 43,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 110, left: 50),
                      child: Text(
                        'Best Google my Business\nmanagement from ricoz',
                        style: TextStyle(
                            color: Pallete.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 23),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 170),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromARGB(185, 61, 37, 28)),
                            child: Center(
                              child: Text(
                                'gmb',
                                style: TextStyle(
                                  color: Pallete.whiteColor,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 45,
                            width: 130,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color.fromARGB(185, 61, 37, 28)),
                            child: Center(
                              child: Text(
                                '#bestgmbmanagement',
                                style: TextStyle(
                                  color: Pallete.whiteColor,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                  Container(
                    height: 1590,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              child: Image.asset(
                                'assets/Handling/insta.png',
                                height: 17,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                height: 18,
                                width: 1,
                                color: Pallete.fontcolor2,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 22),
                              child: Text(
                                '  GMB Services   ',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Pallete.fontcolor2),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Center(
                          child: Text(
                            'Google My Business Service',
                            style: TextStyle(
                                fontSize: 21, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 21.0, left: 20),
                          child: Text('Service Details',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 30),
                          child: Expanded(
                            child: RichText(
                              text: const TextSpan(
                                text:
                                    'Local and online businesses alike can achieve these goals by having an effective Google my business for business strategy.',
                                style: TextStyle(
                                    color: Pallete.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300),
                                children: [
                                  TextSpan(
                                      text: 'more.',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w400,
                                          decoration: TextDecoration.underline,
                                          decorationThickness: 2))
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                            endIndent: 15,
                            color: Colors.grey,
                            indent: 15,
                            thickness: 0.3),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 10),
                          child: Text(
                            'Eligibility Criteria',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 20.0, right: 30, top: 20),
                          child: Service_Roles(
                            txt: 'Business Owner',
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 20.0, right: 30, top: 4),
                          child: Service_Roles(
                            txt: 'Chief Corporate Officer',
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 20.0, right: 30, top: 4),
                          child: Service_Roles(
                            txt: 'Startup',
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 20.0, right: 30, top: 4),
                          child: Service_Roles(
                            txt: 'Propietor',
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 20.0, right: 30, top: 4),
                          child: Service_Roles(
                            txt: 'Celebrity',
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 20.0, right: 30, top: 4),
                          child: Service_Roles(
                            txt: 'Influencer',
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Divider(
                            endIndent: 15,
                            color: Colors.black,
                            indent: 15,
                            thickness: 0.5),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, right: 30, top: 30),
                          child: Container(
                            height: 47,
                            width: 362,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(51),
                              ),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(width: 30),
                                const Text(
                                  'Starting Date:',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => _selectDate(context),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: const Image(
                                        image: AssetImage(
                                            'assets/Handling/calenderr.png'),
                                        width: 20,
                                        height: 20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Slider(
                            value: _sliderValue,
                            min: 0.0,
                            max: 3.0,
                            divisions: 3,
                            activeColor: Colors.black,
                            inactiveColor: Colors.grey,
                            onChanged: (value) {
                              setState(() {
                                _sliderValue = value;
                              });
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 20),
                          child: Text('Payment Details',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600)),
                        ),
                        const SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: const Color(0xFFCBE2F5),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(115, 117, 117, 117),
                                  blurRadius: 01,
                                  offset: Offset(
                                    2.0,
                                    5.0,
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                              ),
                              child: Row(
                                children: [
                                  const Text(
                                    'Special Pack',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  SizedBox(
                                    height: 30,
                                    width: 90,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Pallete.whiteColor,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                side: const BorderSide(
                                                    color: Pallete.brown,
                                                    width: 2.5))),
                                        onPressed: () {},
                                        child: const Text(
                                          'BUY NOW',
                                          style: TextStyle(
                                              color: Pallete.brown,
                                              fontSize: 13),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 254, 243, 219),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(115, 117, 117, 117),
                                  blurRadius: 01,
                                  offset: Offset(
                                    2.0,
                                    5.0,
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                              ),
                              child: Row(
                                children: [
                                  const Text(
                                    'Special Pack Pro',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 58,
                                  ),
                                  SizedBox(
                                    height: 30,
                                    width: 90,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Pallete.whiteColor,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                side: BorderSide(
                                                    color: Pallete.brown,
                                                    width: 2.5))),
                                        onPressed: () {},
                                        child: Text(
                                          'BUY NOW',
                                          style: TextStyle(
                                              color: Pallete.brown,
                                              fontSize: 13),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 222, 249),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(115, 117, 117, 117),
                                  blurRadius: 01,
                                  offset: const Offset(
                                    2.0,
                                    5.0,
                                  ),
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    'Corporate Pack',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  SizedBox(
                                    height: 30,
                                    width: 90,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Pallete.whiteColor,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                side: const BorderSide(
                                                    color: Pallete.brown,
                                                    width: 2.5))),
                                        onPressed: () {},
                                        child: const Text(
                                          'BUY NOW',
                                          style: TextStyle(
                                              color: Pallete.brown,
                                              fontSize: 13),
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 30),
                          child: Text('Strategy for one month by ricoz ',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 15.0, left: 20, right: 30),
                          child: Row(
                            children: [
                              Icon(Icons.circle_rounded, size: 8),
                              Text('    Posting of infographics',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300))
                            ],
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 10.0, left: 20, right: 30),
                          child: Row(
                            children: [
                              Icon(Icons.circle_rounded, size: 8),
                              Expanded(
                                child: Text(
                                    '    Posting of stories and be highlight- every day',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300)),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 10.0, left: 20, right: 30),
                          child: Row(
                            children: [
                              Icon(Icons.circle_rounded, size: 8),
                              Text(
                                  '    Focus on engagement and organic sharing-\n    everyday',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300))
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0, left: 20),
                          child: Row(
                            children: [
                              Icon(Icons.circle_rounded, size: 8),
                              Expanded(
                                child: Text(
                                    '    Reels and videos- according to the strategy sheet\n    (including editing and ideas)',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300)),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 10.0, left: 20, right: 30),
                          child: Row(
                            children: [
                              Icon(Icons.circle_rounded, size: 8),
                              Expanded(
                                child: Text(
                                    '    Discussion of post ideas and engagement ways-\n    everyday',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300)),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 10.0, left: 20, right: 30),
                          child: Row(
                            children: [
                              Icon(Icons.circle_rounded, size: 8),
                              Expanded(
                                child: Text(
                                    '    Advertisements( posters and writeups, ads run)-\n     end of every week or as and when required',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300)),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 10.0, left: 20, right: 30),
                          child: Row(
                            children: [
                              Icon(Icons.circle_rounded, size: 8),
                              Text(
                                  '    Reels video for the brand (content, editing,\n    posting',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300))
                            ],
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(top: 10.0, left: 20, right: 30),
                          child: Row(
                            children: [
                              Icon(Icons.circle_rounded, size: 8),
                              Expanded(
                                child: Text(
                                    '    Working on different strategies decided for\n     the month- regular basis',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300)),
                              )
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 30),
                          child: Text(' Help & Support',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 20.0, top: 10, right: 33),
                          child: Expanded(
                            child: Text(
                                'In case of any queries, refer to the FAQs or contact us via the ‘help’ section below',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w300)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 20),
                          child: Row(
                            children: [
                              Image(
                                  image: AssetImage('assets/mail.png'),
                                  width: 24,
                                  height: 24),
                              SizedBox(width: 9),
                              Text('Email',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(68, 1, 1, 1),
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Container(
                                  height: 30,
                                  width: 1,
                                  color: Pallete.black,
                                ),
                              ),
                              Image(
                                  image: AssetImage('assets/faq.png'),
                                  width: 24,
                                  height: 24),
                              SizedBox(width: 9),
                              Text('FAQs',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(68, 1, 1, 1),
                                  )),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 32),
                          child: Text(
                            '*By accepting you agree to fulfill all the collaboration requirements and terms & conditions mentioned.',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 13),
                          ),
                        ),
                        SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: SizedBox(
                            height: 50,
                            width: 320,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Pallete.brown,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                                onPressed: () {},
                                child: const Text(
                                  'Proceed to Payment',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}

class Service_Roles extends StatelessWidget {
  const Service_Roles({
    super.key,
    required this.txt,
  });
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: 365,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(6))),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //const SizedBox(width: 18),
              const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Image(
                    image: AssetImage('assets/person.png'),
                    width: 29,
                    height: 29),
              ),
              // const SizedBox(width: 19),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(txt,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Image(
                    image: AssetImage('assets/check.png'),
                    width: 20,
                    height: 20),
              ),
            ],
          ),
        ));
  }
}
