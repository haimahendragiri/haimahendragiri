import 'package:flutter/material.dart';

class Akun extends StatefulWidget {
  AkunState createState() => AkunState();
}

class AkunState extends State<Akun> {
  Widget build(BuildContext) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Akun"),
        ),
        body: Container(
          padding: EdgeInsets.all(5.0),
          child: ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "AKUN",
                ),
              )
            ],
          ),
        ));
  }
}
