import 'package:flutter/material.dart';

class Tiket extends StatefulWidget {
  TiketState createState() => TiketState();
}

class TiketState extends State<Tiket> {
  Widget build(BuildContext) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tiket"),
        ),
        body: Container(
          padding: EdgeInsets.all(5.0),
          child: ListView(
            children: <Widget>[
              Center(
                child: Text(
                  "TIKET",
                ),
              )
            ],
          ),
        ));
  }
}
