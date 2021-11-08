import 'package:flutter/material.dart';

class Maps extends StatefulWidget {
  MapsState createState() => MapsState();
}

class MapsState extends State<Maps> {
  Widget build(BuildContext) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Maps"),
        ),
        body: Container(
          padding: EdgeInsets.all(5.0),
          child: ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "MAPS",
                ),
              )
            ],
          ),
        ));
  }
}
