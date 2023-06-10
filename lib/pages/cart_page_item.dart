import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Image.asset(
              'assets/dmp.png',
              height: 130,
              width: 128,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Digital Marketing\npackage',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                      letterSpacing: 1.5),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '₹ XX,499',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      letterSpacing: .5),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Available',
                  style: TextStyle(
                      color: Color.fromARGB(255, 89, 207, 150),
                      fontWeight: FontWeight.w500,
                      letterSpacing: .5),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Buy more save more, upto ₹750',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 29, 132, 216),
                      fontWeight: FontWeight.w300,
                      fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  width: 138,
                  height: 38,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 203, 202, 202),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_outline_sharp)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 21),
                  child: Container(
                    width: 50,
                    height: 35,
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 25),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle_outline,
                        )),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromARGB(255, 178, 174, 174))),
                    child: const Center(
                      child: Text(
                        'Delete',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        border: Border.all(
                            color: const Color.fromARGB(255, 180, 178, 178))),
                    child: const Center(
                      child: Text(
                        'Safe for later',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )
    ]);
  }
}
