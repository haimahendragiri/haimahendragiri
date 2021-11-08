import 'package:flutter/material.dart';

class Berita extends StatefulWidget {
  BeritaState createState() => BeritaState();
}

class BeritaState extends State<Berita> {
  Widget build(BuildContext) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Berita"),
        ),
        body: Container(
          padding: EdgeInsets.all(5.0),
          child: ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "BERITA",
                ),
              )
            ],
          ),
        ));
  }
}
