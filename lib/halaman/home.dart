import 'package:flutter/material.dart';
import 'package:linda/halaman/home_body.dart';

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ERLINDA APPs")),
      body: homeBody(context),
    );
  }
}
