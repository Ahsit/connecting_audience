// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/Notification_page.dart';
import 'package:ricoz_app/pages/menu_page.dart';

class ServiceDigital extends StatefulWidget {
  const ServiceDigital({super.key});

  @override
  State<ServiceDigital> createState() => _ServiceDigitalState();
}

class _ServiceDigitalState extends State<ServiceDigital> {
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
      backgroundColor: Color.fromRGBO(68, 1, 1, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(68, 1, 1, 1),
        title: const Image(
            image: AssetImage('assets/digitalmarket.png'),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 21),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 21.0),
                  child:
                      Icon(Icons.arrow_back_ios, color: Colors.white, size: 15),
                ),
                SizedBox(width: 26),
                Text('Service Detail',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400))
              ],
            ),
            const SizedBox(height: 23),
            const Padding(
              padding: EdgeInsets.only(left: 17.0, right: 17),
              child: Image(
                  image: AssetImage('assets/Service_SMM.png'),
                  width: 394,
                  height: 234),
            ),
            const SizedBox(height: 33),
            Container(
                height: 1800,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top: 20),
                            child: Image.asset(
                              'assets/course/insta.png',
                              height: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 20,
                              width: 1,
                              color: Pallete.fontcolor2,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 22),
                            child: Text(
                              '  Digital Marketing  ',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Pallete.fontcolor2),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 21),
                      const Center(
                        child: Text(
                          'Social Media Management',
                          style: TextStyle(
                              fontSize: 21, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 21.0, left: 28),
                        child: Text('Service Details',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16.0, left: 20, right: 32),
                        child: Expanded(
                          child: RichText(
                            text: const TextSpan(
                              text:
                                  'Manage Your Social Strategies. Expand your online audience and establish your social brand in five courses ',
                              style: TextStyle(
                                  color: Pallete.black,
                                  fontSize: 17,
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
                      const SizedBox(height: 15),
                      const Divider(
                          endIndent: 15,
                          color: Colors.grey,
                          indent: 15,
                          thickness: 0.3),
                      const Padding(
                        padding: EdgeInsets.only(left: 29.0, top: 27),
                        child: Text(
                          'Eligibility Criteria',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 30.0, right: 30, top: 30),
                        child: Service_Roles(
                          txt: 'Business Owner',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30.0, right: 30, top: 4),
                        child: Service_Roles(
                          txt: 'Chief Corporate Officer',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30.0, right: 30, top: 4),
                        child: Service_Roles(
                          txt: 'Startup',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30.0, right: 30, top: 4),
                        child: Service_Roles(
                          txt: 'Propietor',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30.0, right: 30, top: 4),
                        child: Service_Roles(
                          txt: 'Celebrity',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30.0, right: 30, top: 4),
                        child: Service_Roles(
                          txt: 'Influencer',
                        ),
                      ),
                      const SizedBox(height: 33),
                      const Divider(
                          endIndent: 15,
                          color: Colors.grey,
                          indent: 15,
                          thickness: 0.5),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 30.0, right: 30, top: 49),
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
                              Text(
                                '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(width: 25),
                              GestureDetector(
                                onTap: () => _selectDate(context),
                                child: const Image(
                                    image: AssetImage('assets/calenderr.png'),
                                    width: 20,
                                    height: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Slider(
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
                      const Padding(
                        padding: EdgeInsets.only(left: 33.0, top: 30),
                        child: Text('Payment Details',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600)),
                      ),
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
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
                                      fontSize: 19,
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
                                            color: Pallete.brown, fontSize: 13),
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
                        padding: const EdgeInsets.only(left: 25),
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
                                      fontSize: 19,
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
                                            color: Pallete.brown, fontSize: 13),
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
                        padding: const EdgeInsets.only(left: 25),
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
                                      fontSize: 19,
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
                                            color: Pallete.brown, fontSize: 13),
                                      )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 34.0, top: 53),
                        child: Text('Strategy for one month by ricoz ',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700)),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 22.0, left: 16),
                        child: Row(
                          children: [
                            Icon(Icons.circle_rounded, size: 8),
                            Text('    Posting of infographics',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 16),
                        child: Row(
                          children: [
                            Icon(Icons.circle_rounded, size: 8),
                            Expanded(
                              child: Text(
                                  '    Posting of stories and be highlight- every day',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 16),
                        child: Row(
                          children: [
                            Icon(Icons.circle_rounded, size: 8),
                            Text(
                                '    Focus on engagement and organic sharing- everyday',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 16),
                        child: Row(
                          children: [
                            Icon(Icons.circle_rounded, size: 8),
                            Expanded(
                              child: Text(
                                  '    Reels and videos- according to the strategy sheet (including editing and ideas)',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 16),
                        child: Row(
                          children: [
                            Icon(Icons.circle_rounded, size: 8),
                            Expanded(
                              child: Text(
                                  '    Discussion of post ideas and engagement ways- everyday',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 16),
                        child: Row(
                          children: [
                            Icon(Icons.circle_rounded, size: 8),
                            Expanded(
                              child: Text(
                                  '    Advertisements( posters and writeups, ads run)- end of every week or as and when required',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 16),
                        child: Row(
                          children: [
                            Icon(Icons.circle_rounded, size: 8),
                            Text(
                                '    Reels video for the brand (content, editing, posting)',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400))
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20.0, left: 16),
                        child: Row(
                          children: [
                            Icon(Icons.circle_rounded, size: 8),
                            Expanded(
                              child: Text(
                                  '    Working on different strategies decided for the month- regular basis',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 33.0, top: 40),
                        child: Text(' Help & Support',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600)),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 34.0, top: 10, right: 33),
                        child: Expanded(
                          child: Text(
                              'In case of any queries, refer to the FAQs or contact us via the ‘help’ section below',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w300)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 34.0, top: 20),
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
                            VerticalDivider(
                              // width: 20,
                              thickness: 6,
                              indent: 20,
                              endIndent: 0,
                              color: Colors.grey,
                            ),
                            SizedBox(width: 35),
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
                        padding: EdgeInsets.only(left: 34.0, top: 32),
                        child: Text(
                            '*By accepting you agree to fulfill all the collaboration requirements and terms & conditions mentioned.'),
                      ),
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: SizedBox(
                          height: 50,
                          width: 320,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Pallete.brown,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () {},
                              child: const Text(
                                'Proceed to Payment',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )),
                        ),
                      )
                    ]))
          ],
        ),
      ),
    );
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
