import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoCard extends StatefulWidget {
  final String videoTitle;
  final String videoUrl;
  final Function()? onTap;

  VideoCard({required this.videoTitle, required this.videoUrl, this.onTap});

  @override
  _VideoCardState createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((_) {
        setState(
            () {}); // Ensure the video widget rebuilds after initialization
      });
  }

  @override
  void dispose() {
    _controller
        .dispose(); // Dispose the controller when the widget is removed from the tree
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: 200.0,
        margin: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller),
                    )
                  : Container(), // Show an empty container if video is not initialized yet
            ),
            SizedBox(height: 8.0),
            Text(widget.videoTitle),
          ],
        ),
      ),
    );
  }
}
