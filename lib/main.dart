import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _show() {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Hi, I am a snack bar!"),
    ));
  }

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF00FF95),
          title: Text(
            "PozzSeang.ONE",
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        body: Center(
          child: MaterialButton(
            color: Color(0xFF00FF95),
            textColor: Color.fromARGB(255, 0, 0, 0),
            child: Text('Copy Text Test'),
            onPressed: () {
              FlutterClipboard.copy('HI B SL O')
                  .then((value) => print('copied'));
              _show;
              launchURL('pozzseang.one');
            },
          ),
          
        ),
      ),
    );
  }
}
