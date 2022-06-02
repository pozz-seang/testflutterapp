// ignore_for_file: avoid_print, prefer_const_constructors

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: Color(0xFF00FF95),


          title: Text("Welcome HOME Page", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),),


        ),
        body: Center(
          child: MaterialButton(
            color: Color(0xFF00FF95),
            textColor: Color.fromARGB(255, 0, 0, 0),
            child: Text('សូមចុចទីនេះដើម្បីយកពាក្យទៅជូនមនុស្សជាទីស្រលាញ៉របស់អ្នក'),
            onPressed: () {
              FlutterClipboard.copy('បងស្រលាញ់អូនណាស់😘')
                  .then((value) => print('copied'));
            },
          ),
          
        ),
      ),
    );
  }
}

