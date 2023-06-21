import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ricoz_app/Services/colors.dart';

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final TextEditingController textController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    textController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 20,
        automaticallyImplyLeading: false,
        shadowColor: Colors.transparent,
        backgroundColor: const Color.fromARGB(185, 68, 1, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 360,
          height: 250,
          decoration: BoxDecoration(
              color: const Color.fromARGB(47, 140, 140, 140),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Please Rate out Service',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    height: 50,
                    width: 240,
                    color: Colors.transparent,
                    child: const Ratingstar()),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: 320,
                    child: TextField(
                      controller: textController,
                      decoration:
                          const InputDecoration(hintText: 'Review (Optoional)'),
                    )),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Pallete.brown),
                    onPressed: () {},
                    child: Text('Submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Ratingstar extends StatelessWidget {
  const Ratingstar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: RatingBar.builder(
          initialRating: 0,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Color.fromARGB(255, 255, 209, 72),
          ),
          onRatingUpdate: (rating) {
            // print(rating);
          },
        ));
  }
}
