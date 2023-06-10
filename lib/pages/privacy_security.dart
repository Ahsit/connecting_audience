import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/change_password.dart';

class SecurityPassword extends StatelessWidget {
  const SecurityPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 25.0, bottom: 10, top: 30),
        child: Row(
          children: [
            Icon(Icons.arrow_back_ios_new),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          children: [
            Text('Security & Privacy',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600))
          ],
        ),
      ),
      SizedBox(height: 16),
      ProfileSetMenu(
          text1: 'Change Account Password',
          text2: ' Secure access to your account using a Unique Passcode',
          icons: Icons.lock,
          press: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChangePassword(),
                ));
          }),
    ]))));
  }
}

class ProfileSetMenu extends StatelessWidget {
  const ProfileSetMenu({
    Key? key,
    required this.text1,
    required this.text2,
    required this.press,
    required this.icons,
  }) : super(key: key);

  final String text1, text2;
  final VoidCallback press;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32, top: 20.0),
          child: Row(
            children: [
              Icon(icons, size: 30),
              const SizedBox(width: 12),
              Text(text1,
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400)),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 76.0),
              child: Text(text2,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(0, 0, 0, 0.44),
                      fontWeight: FontWeight.w500)),
            )),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: press,
                child: Icon(Icons.arrow_forward_ios_rounded,
                    color: Colors.grey[700]),
              ),
            )
          ],
        ),
      ],
    );
  }
}
