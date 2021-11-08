import 'package:flutter/material.dart';

class Laman extends StatefulWidget {
  LamanState createState() => LamanState();
}

class LamanState extends State<Laman> {
  Widget build(BuildContext) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tentang"),
        ),
        body: Container(
          padding: EdgeInsets.all(5.0),
          child: ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "WEBSITE",
                ),
              )
            ],
          ),
        ));
  }
}
