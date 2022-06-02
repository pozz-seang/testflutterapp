// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'NavBar.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  final List<String> images = [
    'assets/image/1.jpg',
    'assets/image/2.jpg',
    'assets/image/3.jpg',
    'assets/image/4.jpg',
    'assets/image/5.jpg',
  ];

  List<Widget> generateImagesTiles() {
    return images
        .map((e) => ClipRRect(
              child: Image.asset(e, fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(15.0),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 0, 0),
          title: Text("Welcome HOME Page", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),


        ),
        body: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          padding: EdgeInsets.only(top: 50),
          child: Stack(
            children: [
              CarouselSlider(
                items: generateImagesTiles(),
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    autoPlay: true
                )),
              Center(
                child: MaterialButton(
                  color: Color.fromARGB(255, 255, 0, 0),
                  textColor: Color.fromARGB(255, 255, 255, 255),
                  height: 50,
                  child: Text('សូមចុចទីនេះ'),
                  onPressed: () {
                    FlutterClipboard.copy('បងស្រលាញ់អូនណាស់😘').then((value) => print('copied'));
                  },
                ),
                
              ),
              
            ],
            
          ),
        )
      ),
    );
  }
}

