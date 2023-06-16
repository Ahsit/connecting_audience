import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';

class VideoCard extends StatefulWidget {
  //final String videoTitle;
  final String videoUrl;
  final Function()? onTap;

  VideoCard({required this.videoUrl, this.onTap});

  @override
  _VideoCardState createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  late VideoPlayerController _controller;
  late var _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl);
    _initializeVideoPlayerFuture = _controller.initialize().then((val) {
      setState(() {}); // Trigger a rebuild once the video is initialized
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleVideoPlayback() {
    if (_controller.value.isPlaying) {
      _controller.pause();
    } else {
      _controller.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _toggleVideoPlayback();
      },
      child: Container(
        width: 200.0,
        padding: EdgeInsets.all(5.0),
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: VideoPlayer(_controller),
          ),
        ),
      ),
    );
  }
}
