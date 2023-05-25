// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_const_declarations

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ricoz_app/Services/colors.dart';
import 'package:ricoz_app/pages/Notification_page.dart';
import 'package:ricoz_app/pages/menu_page.dart';
import 'package:http/http.dart' as http;

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

final nameController = TextEditingController();
final emailController = TextEditingController();
final subjectController = TextEditingController();
final messageController = TextEditingController();

Future sendEmail() async {
  final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send-form");
  const serviceId = "service_nk56tzj";
  const templateId = "template_kknwv08";
  final publicKey = "W3Nt9qKhhw-J5fWvI";
  final response = await http.post(url,
      headers: {
        'Content-Type': 'application/json',
        // 'origin': "http://localhost"
      },
      body: json.encode({
        "service_id": serviceId,
        "template_id": templateId,
        "user_id": publicKey,
        "template_params": {
          "name": nameController.text,
          "subject": subjectController.text,
          "message": messageController.text,
          "user_email": emailController.text
        }
      }));
  return response.statusCode;
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  'Contact Form',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationThickness: 1,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cormorant Garamond'),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Please let us Know how we may assist you?',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              width: 350,
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Pallete.black, width: 1)),
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Pallete.fontcolor2),
                    suffixIcon: Icon(
                      Icons.account_circle,
                      color: Pallete.fontcolor2,
                      size: 20,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              width: 350,
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Pallete.black, width: 1)),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Pallete.fontcolor2),
                    suffixIcon: Icon(
                      Icons.mail,
                      color: Pallete.fontcolor2,
                      size: 20,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              width: 350,
              child: TextFormField(
                controller: subjectController,
                decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Pallete.black, width: 1)),
                    labelText: 'Subject',
                    labelStyle: TextStyle(color: Pallete.fontcolor2),
                    suffixIcon: Icon(
                      Icons.subject,
                      color: Pallete.fontcolor2,
                      size: 20,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 60,
              width: 350,
              child: TextFormField(
                controller: messageController,
                decoration: InputDecoration(
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Pallete.black, width: 1)),
                    labelText: 'Message',
                    labelStyle: TextStyle(color: Pallete.fontcolor2),
                    suffixIcon: Icon(
                      Icons.message,
                      color: Pallete.fontcolor2,
                      size: 20,
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              width: 100,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(68, 1, 1, 1)),
                  onPressed: () {
                    sendEmail();
                  },
                  child: Text(
                    "Send",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
