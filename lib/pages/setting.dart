import 'package:flutter/material.dart';
//import 'package:ricoz_app/pages/components/switch_button.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 20,
          automaticallyImplyLeading: false,
          shadowColor: Colors.transparent,
          backgroundColor: const Color.fromARGB(185, 68, 1, 1),
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
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
              height: 30,
            ),
            Center(
              child: Container(
                width: 360,
                height: 180,
                decoration: BoxDecoration(
                    color: const Color(0x39DDDDDD),
                    borderRadius: BorderRadius.circular(15)),
                child: ListView(
                  children: [
                    buildMenuOption(context, 'Edit', () {}, Icons.edit),
                    buildMenuOption(
                        context, 'Notifications', () {}, Icons.notifications),
                    buildMenuOption(
                        context, 'Share with your friends', () {}, Icons.share),
                    buildMenuOption(context, 'Terms and Conditions', () {},
                        Icons.system_security_update_warning),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 360,
              height: 135,
              decoration: BoxDecoration(
                  color: const Color(0x39DDDDDD),
                  borderRadius: BorderRadius.circular(15)),
              child: ListView(
                children: [
                  buildMenuOption(context, 'Light Mode', () {}, Icons.sunny),
                  buildMenuOption(
                      context, 'Disable Account', () {}, Icons.no_accounts),
                  buildMenuOption(
                      context, 'Delete Account', () {}, Icons.delete_forever),
                ],
              ),
            ),
          ],
        ));
  }
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
