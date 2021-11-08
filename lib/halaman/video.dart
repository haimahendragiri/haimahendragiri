import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  VideoState createState() => VideoState();
}

class VideoState extends State<Video> {
  Widget build(BuildContext) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Video"),
        ),
        body: Container(
          padding: EdgeInsets.all(5.0),
          child: ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "VIDEO",
                ),
              )
            ],
          ),
        ));
  }
}
