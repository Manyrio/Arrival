import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerBackground extends StatefulWidget {
  VideoPlayerBackground({Key key}) : super(key: key);

  @override
  _VideoPlayerBackground createState() => _VideoPlayerBackground();
}

class _VideoPlayerBackground extends State<VideoPlayerBackground> {

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {

    _controller = VideoPlayerController.asset('assets/test.mp4');

    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);

    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_controller.value.isPlaying) return;
    _controller.setVolume(0);
    _controller.play();
    _controller.setPlaybackSpeed(0.75);

    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Container(
            height: MediaQuery.of(context).size.height,
            child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                    width: _controller.value.size?.width ?? 0,
                    height: _controller.value.size?.height ?? 0,
                    child: VideoPlayer(_controller))),
          );
        } else {
          return Container();
        }
      },
    );
  }

}