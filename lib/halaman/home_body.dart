import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:linda/halaman/akun.dart';
import 'package:linda/halaman/berita.dart';
import 'package:linda/halaman/info.dart';
import 'package:linda/halaman/jadwal.dart';
import 'package:linda/halaman/laman.dart';
import 'package:linda/halaman/peta.dart';
import 'package:linda/halaman/tentang.dart';
import 'package:linda/halaman/tiket.dart';
import 'package:linda/halaman/video.dart';

final List<String> listGambar = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> slideGambar = listGambar
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'No. ${listGambar.indexOf(item)} linda',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

Widget widgetGambar = new CarouselSlider(
  options: CarouselOptions(
    autoPlay: true,
    aspectRatio: 2.0,
    enlargeCenterPage: true,
  ),
  items: slideGambar,
);

Widget widgetMenu(BuildContext context) {
  return new Container(
      child: GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          childAspectRatio: 3 / 2,
          children: [
        //Tentang
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Tentang(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                border: Border.all(color: Colors.blue, width: 1.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/icon/icon-tentang.png"),
                  height: 50,
                ),
                Text("About")
              ],
            ),
          ),
        ),

        //Berita
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Berita(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                border: Border.all(color: Colors.blue, width: 1.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/icon/icon-berita.png"),
                  height: 50,
                ),
                Text("News")
              ],
            ),
          ),
        ),

        //Info
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Info(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                border: Border.all(color: Colors.blue, width: 1.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/icon/icon-info.png"),
                  height: 50,
                ),
                Text("Info")
              ],
            ),
          ),
        ),

        //Video
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Video(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                border: Border.all(color: Colors.blue, width: 1.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/icon/icon-video.png"),
                  height: 50,
                ),
                Text("Video")
              ],
            ),
          ),
        ),

        //Peta
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Maps(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                border: Border.all(color: Colors.blue, width: 1.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/icon/icon-peta.png"),
                  height: 50,
                ),
                Text("Maps")
              ],
            ),
          ),
        ),

        //Jadwal
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Jadwal(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                border: Border.all(color: Colors.blue, width: 1.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/icon/icon-jadwal.png"),
                  height: 50,
                ),
                Text("Schedule")
              ],
            ),
          ),
        ),

        //Tiket
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Tiket(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                border: Border.all(color: Colors.blue, width: 1.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/icon/icon-tiket.png"),
                  height: 50,
                ),
                Text("Ticket")
              ],
            ),
          ),
        ),

        //Akun
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Akun(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                border: Border.all(color: Colors.blue, width: 1.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/icon/icon-akun.png"),
                  height: 50,
                ),
                Text("Account")
              ],
            ),
          ),
        ),

        //Web
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Laman(),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.yellowAccent,
                border: Border.all(color: Colors.blue, width: 1.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/icon/icon-web.png"),
                  height: 50,
                ),
                Text("Web")
              ],
            ),
          ),
        ),
      ]));
}

Widget homeBody(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(15),
    child: ListView(
      children: [widgetGambar, widgetMenu(context), Text("List 3")],
    ),
  );
}
