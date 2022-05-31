import 'package:flutter/material.dart';

void main(){
  runApp(Home());
}




class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFE600FF),
          leading: IconButton(icon: Icon(Icons.home,color: Color(0xFFFFFFFF)), onPressed: null,),
          title: Text("Test By SEHacker", style: TextStyle(color: Color(
              0xFFFFFFFF)),),
        ),
      ),
    );
  }
}


