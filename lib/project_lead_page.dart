/*主文件*/
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/shop_page.dart';
import 'pages/shop_cart_page.dart';
import 'pages/person_page.dart';

class LeadPage extends StatefulWidget {
  _LeadPage createState() => _LeadPage();
}

class _LeadPage extends State<LeadPage> {
  int _index = 0;
  var iconColor = Colors.lightBlue;

  //list集合添加图标
  var listIcons = [Icons.home, Icons.shop,
    Icons.shopping_cart, Icons.person];

  //list集合添加页面
  var listPages = [Home(), ShopPage(),
    ShopCartPage(), PersonPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          color: Colors.lightBlue,
          child: Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(listIcons[0]),
                  color: iconColor,
                  onPressed: () {
                    setState(() {
                      _index = 0;
                    });
                    _page(_index);
                  }),
              IconButton(
                  icon: Icon(listIcons[1]),
                  color: iconColor,
                  onPressed: () {
                    setState(() {
                      _index = 1;
                    });
                    _page(_index);
                  }),
              IconButton(
                  icon: Icon(listIcons[2]),
                  color: iconColor,
                  onPressed: () {
                    setState(() {
                      _index = 2;
                    });
                    _page(_index);
                  }),
              IconButton(
                  icon: Icon(listIcons[3]),
                  color: iconColor,
                  onPressed: () {
                    setState(() {
                      _index = 3;
                    });
                    _page(_index);
                  })
            ],
          )),
    );
  }

  void _page(_index) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context) => listPages[_index]));
  }
}
