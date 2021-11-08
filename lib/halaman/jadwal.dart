import 'package:flutter/material.dart';

class Jadwal extends StatefulWidget {
  JadwalState createState() => JadwalState();
}

class JadwalState extends State<Jadwal> {
  Widget build(BuildContext) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Jadwal"),
        ),
        body: Container(
          padding: EdgeInsets.all(5.0),
          child: ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "JADWAL",
                ),
              )
            ],
          ),
        ));
  }
}
