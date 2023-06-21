import 'package:flutter/material.dart';

class DealAndTrasaction extends StatelessWidget {
  const DealAndTrasaction({super.key});

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
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Your History',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0).copyWith(top: 30),
            child: Container(
              height: 270,
              width: 350,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(57, 172, 172, 172),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0).copyWith(top: 20),
                      child: Image.asset(
                        'assets/dmp.png',
                        height: 70,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0).copyWith(top: 20),
                      // ignore: prefer_const_constructors
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Design Course',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Basics Of UI/UX',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "3 Months",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '18 June 2023 at 8:27PM',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Text(
                                '₹850.90',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                  const Divider(
                    color: Colors.black,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0).copyWith(top: 20),
                      child: Image.asset(
                        'assets/dmp.png',
                        height: 70,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0).copyWith(top: 20),
                      // ignore: prefer_const_constructors
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Design Course',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Basics Of UI/UX',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "3 Months",
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '18 June 2023 at 8:27PM',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Text(
                                '₹850.90',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
