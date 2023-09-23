import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String assetPath;
  const VideoPlayerWidget({super.key, required this.assetPath});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController controller;

  @override
  void initState() {
    controller = VideoPlayerController.asset(widget.assetPath)
      ..setLooping(true)
      ..setVolume(0)
      ..initialize()
      ..play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(child: VideoPlayer(controller));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
