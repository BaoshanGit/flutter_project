import 'package:flutter/material.dart';
import 'parent_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '项目实战',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: ParentPage(),
    );
  }

}