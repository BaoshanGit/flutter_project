/*
伪造去请求头
 */
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'headers.dart';

void main(){
  runApp(RequestPage());
}

class RequestPage extends StatefulWidget{
  _RequestPage createState() => _RequestPage();
}

class _RequestPage extends State<RequestPage>{

  String result = "正在加载..........";
  @override
  void initState() {
    getRequest().then((val){
      result = val.toString();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Text(result)
    );
  }

 Future getRequest() async {
    String url = "https://www.codercto.com/a/55835.html";
    Response response;
    try{
      Dio dio = new Dio();
      dio.options.headers = headers;
      response = await dio.get(url);
      return response.data;
    }catch(e){
      print(e);
    }
 }
}

