import 'package:flutter/material.dart';
import '../components/player.dart';


class StreamPlayer extends StatefulWidget {
  @override
  _StreamPlayerState createState() => _StreamPlayerState();
}

class _StreamPlayerState extends State<StreamPlayer> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Stream Player"),
      ),
      body:Player(),


    );



  }

}