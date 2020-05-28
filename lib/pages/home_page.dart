import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            TextField(
//              controller: ,
            ),
            RaisedButton(
                color: Colors.deepPurpleAccent,
                child: Text("确认选择"),
                onPressed: () {
                  getHttp();
                }
            )
          ],
        ),
      ),
    );
  }

  Future getHttp() async {
    try {
      Response response = await Dio().get("");
      print(response.toString());
      return response;
    } catch (e) {
      print(e);
    }
  }
}