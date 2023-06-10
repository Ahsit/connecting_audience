import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/Notification_page.dart';
import 'package:ricoz_app/pages/expandedSection/About_us.dart';
import 'package:ricoz_app/pages/help/help_page.dart';
import 'package:ricoz_app/pages/privacy_security.dart';
import 'package:ricoz_app/pages/profile_settings.dart';
import 'package:ricoz_app/pages/recharge&renew/recharge.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(68, 1, 1, 1),
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/image 1 (4).png',
          width: 110,
          height: 50,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Help(),
                ),
              );
            },
            icon: Icon(Icons.help),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 21),
            Center(
              child: Container(
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(68, 1, 1, 1),
                      Color.fromARGB(255, 142, 107, 107)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 25),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/image 126 (4).png',
                        width: 40,
                        height: 40,
                      ),
                      SizedBox(width: 12),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Welcome Back',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 7),
                                Icon(
                                  Icons.waving_hand_rounded,
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Nicky Johnson',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Notifications(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.notifications_active,
                            color: Colors.white, size: 30),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: buildMenuOption(context, 'Profile Settings', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileDetails(),
                    ),
                  );
                }, 'assets/menu/profileset.png'),
              ),
            ),
            const SizedBox(height: 5),
            Center(
              child: Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: buildMenuOption(context, 'Orders and Bookings', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RechargeRenew(),
                    ),
                  );
                }, 'assets/menu/orders.png'),
              ),
            ),
            const SizedBox(height: 5),
            Center(
              child: Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: buildMenuOption(context, 'About Us', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutUs(),
                    ),
                  );
                }, 'assets/menu/about.png'),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: buildMenuOption(context, 'Privacy & Security', () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecurityPassword(),
                    ),
                  );
                }, 'assets/menu/secirity.png'),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: buildMenuOption(
                    context, 'Policies', () {}, 'assets/menu/policies.png'),
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: buildMenuOption(context, '24*7 Help & Support', () {},
                    'assets/menu/profileset.png'),
              ),
            ),
            const SizedBox(height: 60),
            const Center(
              child: Text(
                'V 1.9.0(25578)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/menu/youtube.png',
                  height: 40,
                  width: 40,
                ),
                SizedBox(width: 10),
                Image.asset(
                  'assets/menu/insta.png',
                  height: 40,
                  width: 40,
                ),
              ],
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget buildMenuOption(
      BuildContext context, String text, VoidCallback press, String img) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(img, width: 55, height: 55),
            const SizedBox(width: 20),
            Expanded(
              flex: 1,
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSeparator() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        height: 0.3,
        color: Colors.grey[700],
      ),
    );
  }
}
