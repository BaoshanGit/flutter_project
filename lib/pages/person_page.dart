import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PersonPage',style: TextStyle(color: Colors.white))),
      body: Center(
        child: Text('Person Page'),
      ),
    );
  }

}