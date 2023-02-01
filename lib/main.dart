import 'package:flutter/material.dart';
import 'package:livesell/routes.dart';
import 'package:livesell/screens/home.dart';
import 'package:livesell/screens/streamPublisher.dart';
import 'package:livesell/screens/streamPlayer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Home(),
      routes: {
        routes.homeRoute:(context)=>Home(),
        routes.streamPublisherRoute:(context)=>StreamPublisher(),
        routes.streamPlayerRoute:(context)=>StreamPlayer(),

    },
    );
  }
}