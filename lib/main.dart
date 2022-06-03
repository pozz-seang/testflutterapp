// ignore_for_file: avoid_print, prefer_const_constructors, unused_element, sort_child_properties_last

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'NavBar.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 0, 0),
          title: Text(
            "Welcome HOME Page",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        body: _HomeState(),
      ),
    );
  }
}

class _HomeState extends StatelessWidget {
  _HomeState({super.key});
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
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      padding: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          CarouselSlider(
              items: generateImagesTiles(),
              options:
                  CarouselOptions(enlargeCenterPage: true, autoPlay: true)),

          Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: MaterialButton(
                    color: Color.fromARGB(255, 255, 0, 0),
                    textColor: Colors.white,
                    height: 50,
                    child: Text(
                      'សូមចុចទីនេះ',
                      style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))
                    ),
                    onPressed: () {
                      FlutterClipboard.copy('បងស្រលាញ់អូនណាស់😘')
                          .then((value) => print('copied'));



                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Color.fromARGB(255, 255, 0, 0),
                          content: Text('អ្នកបានចម្លងរួចរាល់')
                        )
                      );

                    },
                  ),
                ),
                
                MaterialButton(
                  color: Color.fromARGB(255, 255, 0, 0),
                  textColor: Colors.white,
                  height: 50,
                  child: Text(
                    'Test',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))
                  ),
                  onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Color.fromARGB(255, 255, 0, 0),
                        content: Text('It Working!!!')
                      )
                    );
                  },

                ),

              ],
            )
          ),

        ],
      ),
    );


  }
}
