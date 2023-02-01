import 'package:flutter/material.dart';
import 'package:livesell/routes.dart';
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("StreamIt")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context,routes.streamPublisherRoute);
              },
              child: Text("Stream Publisher"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context,routes.streamPlayerRoute);

              },
              child: Text("Stream Viewer"),
            ),
          ],
        ),
      ),
    );

  }
}