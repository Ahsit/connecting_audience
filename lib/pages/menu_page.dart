import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/deals_and_trasaction.dart';
import 'package:ricoz_app/pages/expandedSection/About_us.dart';
import 'package:ricoz_app/pages/feedback.dart';
import 'package:ricoz_app/pages/help/help_page.dart';
import 'package:ricoz_app/pages/setting.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 20,
        shadowColor: Colors.transparent,
        backgroundColor: Color.fromARGB(185, 68, 1, 1),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/profile.png',
                    height: 70,
                  ),
                ),
              ),
              const SizedBox(
                width: 90,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '            Iphshita Kaur',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'ipshitakaur10@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 30,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 70,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(40)),
                child: const Center(
                  child: Text(
                    'Chat Bot',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 70,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(40)),
                child: const Center(
                  child: Text(
                    'Support',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 50,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(40)),
                child: const Center(
                  child: Text(
                    'FAQ',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 360,
            height: 180,
            decoration: BoxDecoration(
                color: const Color(0x39DDDDDD),
                borderRadius: BorderRadius.circular(15)),
            child: ListView(
              children: [
                buildMenuOption(context, 'Settings', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Setting(),
                      ));
                }, Icons.settings),
                buildMenuOption(context, 'About', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AboutUs(),
                      ));
                }, Icons.info),
                buildMenuOption(context, 'Payment', () {}, Icons.payment),
                buildMenuOption(context, 'Deals and trasactions', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DealAndTrasaction(),
                      ));
                }, Icons.timelapse),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            width: 360,
            height: 180,
            decoration: BoxDecoration(
                color: const Color(0x39DDDDDD),
                borderRadius: BorderRadius.circular(15)),
            child: ListView(
              children: [
                buildMenuOption(context, 'ChatBot', () {},
                    Icons.chat_bubble_outline_rounded),
                buildMenuOption(context, 'Customer Support', () {}, Icons.call),
                buildMenuOption(context, 'Frequently Asked Question', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Help(),
                      ));
                }, Icons.help),
                buildMenuOption(context, 'Feedback', () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FeedbackPage(),
                      ));
                }, Icons.feed),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shadowColor: Colors.transparent),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.exit_to_app,
                    color: Color.fromARGB(255, 88, 88, 88),
                  ),
                  label: const Text(
                    "LogOut",
                    style: TextStyle(
                      color: Color.fromARGB(255, 58, 58, 58),
                      fontSize: 15,
                    ),
                  )))
        ],
      ),
    );
  }

  Widget buildMenuOption(
      BuildContext context, String text, VoidCallback press, IconData icons) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icons,
              size: 24,
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: Text(
                text,
                style: const TextStyle(
                  color: Color.fromARGB(255, 89, 89, 89),
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
