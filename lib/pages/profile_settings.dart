import 'package:flutter/material.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  bool _isEditing = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 220,
              width: width,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(68, 1, 1, 1),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(35)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 25),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.edit_note_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              _isEditing = !_isEditing;
                            });
                          },
                        ),
                        SizedBox(width: width * 0.6),
                        Container(
                          height: height * 0.07,
                          width: width * 0.2,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: const Center(
                            child: Text(
                              ' Save',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Image.asset(
                      'assets/image 126 (4).png',
                      height: 80,
                      width: 80,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      child: const Text(
                        'John Doe',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            buildEditableField(
              label: 'USER NAME',
              value: 'John Doe',
              isEditing: _isEditing,
            ),
            buildEditableField(
              label: '964****664',
              value: 'Phone Number',
              isEditing: _isEditing,
            ),
            buildEditableField(
              label: 'user@gmail.com',
              value: 'Email',
              isEditing: _isEditing,
            ),
            buildEditableField(
              label: 'INDUSTRY',
              value: 'Industry',
              isEditing: _isEditing,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildEditableField({
    required String label,
    required String value,
    required bool isEditing,
  }) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          padding: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromRGBO(68, 84, 100, 1),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(5),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10),
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Positioned(
          left: 50,
          top: 12,
          child: Container(
            padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            color: Colors.white,
            child: Text(
              value,
              style: TextStyle(
                color: const Color.fromARGB(255, 103, 102, 102),
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
