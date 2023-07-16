import 'package:ext_video_player/ext_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Player extends StatefulWidget{
  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        "rtmp://3.108.227.224:1935/live/camera"

    );
    _controller.addListener(() {
      setState(() {
      });
    });
    // _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
    super.initState();

  }
  // @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
          children: [

            SizedBox.expand(
              child: Container(
              decoration: BoxDecoration(
                  border:Border.all(
                      color: Colors.black,
                      width: 1
                  )
              ),
              child: Center(
                child: _controller.value.initialized
                    ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
                    : Container(),
              ),

          ),
            ),
            Positioned(

              bottom: 2,
              left:2,
              child: Container(
                padding: EdgeInsets.all(2),
                width:30,
                height:20 ,
                decoration: BoxDecoration(
                    color: Colors.red
                ),
                child: Text("Live",style: TextStyle(color: Colors.white),),
              ),
            ),

          ]
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}