import 'package:flutter/material.dart';
import 'package:clipboard/clipboard.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF00FF95),
            title: Text(
              " Hi b sl o",
              style: TextStyle(color: Color(0xFFFFFFFF)),
            ),
          ),
          body: Center(
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () async {
                FlutterClipboard.copy('HI B SL O').then(( value ) => print('copied'));
                final snackBar = SnackBar(content: Text("You Copy {HI B SL O}"));
                ScaffoldMessenger.of(context)..removeCurrentSnackBar()..showSnackBar(snackBar);
              },
              child: Text('TEST BUTTON COPY TEXT'),
            ),
          )),
    );
  }
}
