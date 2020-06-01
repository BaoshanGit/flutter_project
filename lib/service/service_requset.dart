import 'dart:io';
import 'package:dio/dio.dart';
import '../config/service_url.dart';

Future getHomePage() async {
  Response response;
  Dio dio = new Dio();
  try{
    response = await dio.get(homePage["getHomePage"]);
    if(response.statusCode == 200){
      return response.data;
    }else{
      return "请求错误！";
    }
  }catch(e){
    print(e);
  }
}