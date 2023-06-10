import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/cart_page.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Checkout',
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500)),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Cart(),
                ));
          },
          child: const Padding(
            padding: const EdgeInsets.only(left: 10),
            child:
                Icon(Icons.keyboard_arrow_left, color: Colors.black, size: 30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 31.0, left: 16),
              child: Row(
                children: [
                  Text('Shipping Address',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            const SizedBox(height: 21),
            Container(
              width: 343,
              height: 108,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 28.0, top: 18),
                    child: Row(
                      children: [
                        Text('John Doe',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                        SizedBox(width: 175),
                        Text('Changes',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(68, 1, 1, 1))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 28.0, top: 7),
                    child: Row(
                      children: [
                        Text(
                            '7 Cambridge Road\nCourt Chino Hills, CA 91709, United States',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            const Row(
              children: [
                SizedBox(width: 16),
                Text('Payment',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                SizedBox(width: 215),
                Text('Change',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
              ],
            ),
            const Row(
              children: [
                Image(
                    image: AssetImage('assets/card.png'),
                    width: 140,
                    height: 140),
                Text('**** **** **** 3947',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400))
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [SizedBox(width: 16), Text('Payment Methods')],
            ),
            SizedBox(height: 21),
            Row(
              children: [
                SizedBox(width: 16),
                Container(
                    width: 100,
                    height: 84,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Column(
                        children: [
                          SizedBox(height: 17),
                          Image(image: AssetImage('assets/fedex.png')),
                          SizedBox(height: 5),
                          Text('2-3 days')
                        ],
                      ),
                    )),
                SizedBox(width: 21),
                Container(
                    width: 100,
                    height: 84,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Column(
                        children: [
                          SizedBox(height: 17),
                          Image(image: AssetImage('assets/usps1.png')),
                          SizedBox(height: 5),
                          Text('2-3 days')
                        ],
                      ),
                    )),
                SizedBox(width: 21),
                Container(
                    width: 100,
                    height: 84,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Column(
                        children: [
                          SizedBox(height: 17),
                          Image(image: AssetImage('assets/dhl1.png')),
                          SizedBox(height: 5),
                          Text('2-3 days')
                        ],
                      ),
                    )),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                SizedBox(width: 16),
                Text('Order :',
                    style: TextStyle(
                        color: Color.fromARGB(255, 115, 112, 112),
                        fontSize: 16)),
                SizedBox(width: 217),
                Icon(Icons.currency_rupee),
                Text('39,999',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                SizedBox(height: 25),
              ],
            ),
            const SizedBox(height: 14),
            const Row(
              children: [
                SizedBox(width: 16),
                Text('Delivery :',
                    style: TextStyle(
                        color: Color.fromARGB(255, 115, 112, 112),
                        fontSize: 16)),
                SizedBox(width: 229),
                Text('FREE',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                SizedBox(height: 25),
              ],
            ),
            const SizedBox(height: 14),
            const Row(
              children: [
                SizedBox(width: 16),
                Text('Summary :',
                    style: TextStyle(
                        color: Color.fromARGB(255, 115, 112, 112),
                        fontSize: 16)),
                SizedBox(width: 182),
                Icon(Icons.currency_rupee),
                Text('39,999',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                SizedBox(height: 25),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(68, 1, 1, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {},
                    child: const Text(
                      'Submit Order',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Roboto Slab',
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
