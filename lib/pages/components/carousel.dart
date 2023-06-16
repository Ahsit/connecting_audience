import 'package:flutter/material.dart';
import 'package:ricoz_app/pages/components/video_view.dart';

class RicozVideoCarousel extends StatelessWidget {
  const RicozVideoCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final videoUrls = [
      'assets/videos/video_sample1.mp4',
      'assets/videos/video_sample2.mp4',
      'assets/videos/video_sample3.mp4',
    ];
    return ListView.builder(
      padding: const EdgeInsets.only(left: 10.0),
      scrollDirection: Axis.horizontal,
      itemCount: videoUrls.length,
      itemBuilder: (context, index) => VideoCard(videoUrl: videoUrls[index]),
    );
  }
}

class CarouselItem extends StatelessWidget {
  const CarouselItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/vedioimage2.jpeg');
  }
}
