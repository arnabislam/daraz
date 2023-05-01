import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

class VideoPlayer extends StatefulWidget {
  VideoPlayer(VideoPlayerController controller);

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // TODO: implement initState
    _controller = VideoPlayerController.network(
        "https://www.youtube.com/watch?v=dSBRQUebo7g");
    _initializeVideoPlayerFuture=_controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("jhdfv"),
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,

        builder: (context,snapshot) {
          if (snapshot.connectionState == ConnectionState.done){
            return AspectRatio(aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            );
          }else{
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }

      ),
     floatingActionButton: FloatingActionButton(
       onPressed: () { setState(() {
         if(_controller.value.isPlaying){
           _controller.pause();
         }else{
           _controller.play();
         }
       }); },
       child: Icon(_controller.value.isPlaying ? Icons.pause:Icons.play_arrow),),

    );
  }
}
