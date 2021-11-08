import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  InfoState createState() => InfoState();
}

class InfoState extends State<Info> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Info"),
        ),
        body: Container(
          padding: EdgeInsets.all(5.0),
          child: ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "INFO",
                ),
              ),
            ],
          ),
        ));
  }
}
