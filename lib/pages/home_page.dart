import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget{
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  TextEditingController typeController = TextEditingController();

  String result = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            controller: typeController,
            decoration: InputDecoration(
              labelText: '输入类型',
              helperText: '请输入选择的类型',
              contentPadding: EdgeInsets.all(10.0)
            ),
            autofocus: false,
          ),
          RaisedButton(
            onPressed: _respBody,
            child: Text('确认选择'),
          ),
          Text(result)
        ],
      ),
    );
  }


  //发送请求
  Future getHttp(String param) async {
    String url = "https://www.easy-mock.com/mock/5c60131a4bed3a6342711498/baixing/dabaojian";
    Response response;
    try{
      Dio dio = new Dio();
      var data = {'name':param};
      response = await dio.get(url,queryParameters: data);
      return response.data;
    }catch(e){
      print(e);
    }
  }

  void _respBody (){
    String param = typeController.text.toString();
    if(param.length > 0){
      getHttp(param).then((val){
        setState(() {
          result = val.toString();
        });
      });
    }else{
      showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text("参数类型不能为空")),
      );
    }
  }
}