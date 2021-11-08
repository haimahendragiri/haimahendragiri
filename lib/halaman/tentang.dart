import 'package:flutter/material.dart';

class Tentang extends StatefulWidget {
  TentangState createState() => TentangState();
}

class TentangState extends State<Tentang> {
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
                  "TENTANG",
                ),
              )
            ],
          ),
        ));
  }
}
