import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/shop_page.dart';
import 'pages/shop_cart_page.dart';
import 'pages/person_page.dart';

class ParentPage extends StatefulWidget {
  _ParentPage createState() => _ParentPage();
}

class _ParentPage extends State<ParentPage>{

  int _index = 0;
  List<Widget> pageList = [HomePage(), ShopPage(),
    ShopCartPage(), PersonPage()];


  static final _iconColor = Colors.lightBlue;
  static final _textColor = Colors.red;
  List<BottomNavigationBarItem> iconList = [
    BottomNavigationBarItem(icon: Icon(Icons.home,color: _iconColor) , title: Text('首页',style: TextStyle(color: _textColor))),
    BottomNavigationBarItem(icon: Icon(Icons.shop,color: _iconColor) , title: Text('全部商品',style: TextStyle(color: _textColor))),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: _iconColor) , title: Text('购物车',style: TextStyle(color: _textColor))),
    BottomNavigationBarItem(icon: Icon(Icons.person,color: _iconColor) , title: Text('个人中心',style: TextStyle(color: _textColor)))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[_index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        items: iconList,
        onTap: (int index){
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }

}