import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  VideoPlayerController controller;
  int position = 0;
  init_player() async {
    controller = VideoPlayerController.asset('assets/nature.mp4');
    await controller.initialize();
    setState(() {});
   // controller.setLooping(true);
  }

  void initState() {
    super.initState();
    init_player();
    controller.addListener(() {
      setState(() {
       position = controller.value.position.inSeconds;
     
      });
       });
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: controller.value.initialized
            ? player()
            : Center(
                child: CircularProgressIndicator(),
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            controller.value.isPlaying ? controller.pause() : controller.play();
            setState(() {});
          },
          child: Icon(
            controller.value.isPlaying ? Icons.pause : Icons.play_arrow
          ),
          
          ),      
              );
          
  }
  Widget player() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
   
      children: <Widget>[
        AspectRatio(
          aspectRatio: controller.value.aspectRatio,
          child: VideoPlayer(controller),
        ),
        Slider(
          value: position.toDouble(),
          
          
          onChanged: (v){
            controller.seekTo(Duration(seconds: v.toInt()));
            setState(() {});
          } ,
          min : 0,
          max: controller.value.duration.inSeconds.toDouble(),
          
          
        ),
      ],
    );
  }
}
