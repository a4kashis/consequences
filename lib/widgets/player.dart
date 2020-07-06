import 'package:chewie/chewie.dart';
import 'package:consequences/utilities/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Player extends StatefulWidget {
  final url;

  Player({this.url});

  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  VideoPlayerController _videoPlayerController;
  ChewieController _chewieController;

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(widget.url);
    _chewieController = ChewieController(
      allowFullScreen: true,
      videoPlayerController: _videoPlayerController,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      color: lightblue,
      child: Chewie(controller: _chewieController),
    );
  }
}
