import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './category_page.dart';
import './home_page.dart';
import './mine_page.dart';
import './shopcart_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../pages/simple.dart';

class Nav_bottomBar_index extends StatefulWidget {
  Nav_bottomBar_index({Key key}) : super(key: key);

  @override
  _Nav_bottomBar_indexState createState() => _Nav_bottomBar_indexState();
}

class _Nav_bottomBar_indexState extends State<Nav_bottomBar_index> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
    BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('分类')),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart), title: Text('购物车')),
    BottomNavigationBarItem(
        icon: Icon(Icons.mail_outline), title: Text('会员中心')),
    BottomNavigationBarItem(icon: Icon(Icons.mail_outline), title: Text('事例')),
  ];

  final List<Widget> navAllPages = [
    HomePage(),
    CategoryPage(),
    ShopCartPage(),
    MinePage(),
    SimplePage(),
  ];

  int currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    currentPage = navAllPages[currentIndex];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            currentPage = navAllPages[currentIndex];
          });
        },
      ),
      body: IndexedStack(
        index: currentIndex,
        children: navAllPages,
      ),
    );
  }
}
