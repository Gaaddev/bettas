import 'package:bettas/pages/ChatPage.dart';
import 'package:bettas/pages/HomePage.dart';
import 'package:bettas/pages/LoginPage.dart';
import 'package:bettas/pages/MenuPage.dart';
import 'package:bettas/pages/OrderPage.dart';
import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _pageIndex = 0;
  final List<Widget> _tabList = [
    HomePage(),
    OrderPage(),
    //LoginPage(),
    //MenuPage(),
    //ChatPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _tabList.elementAt(_pageIndex),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Align(
            alignment: Alignment(0.0, 1.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              child: BottomNavigationBar(
                selectedItemColor: Colors.grey,
                unselectedItemColor: Colors.amber,
                showSelectedLabels: true,
                showUnselectedLabels: false,
                backgroundColor: Colors.black,
                currentIndex: _pageIndex,
                onTap: (int index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), 
                      label: 'Home',
                  ),
                 // BottomNavigationBarItem(
                   // icon: Icon(Icons.apps),
                    //label: 'Menu',
                  //),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.chat),
                    label: 'Info',
                  ),
                  //BottomNavigationBarItem(
                    //icon: Icon(Icons.person),
                    //label: 'Login',
                  //),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.money),
                    label: 'Order',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
