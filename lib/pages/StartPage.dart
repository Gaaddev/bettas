import 'package:bettas/pages/ChatPage.dart';
import 'package:bettas/pages/HomePage.dart';
import 'package:bettas/pages/LoginPage.dart';
import 'package:bettas/pages/MenuPage.dart';
import 'package:bettas/pages/OrderPage.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _pageIndex = 0;
  static const List<Widget> _tabList = <Widget>[
    HomePage(),
    MenuPage(),
    ChatPage(),
    LoginPage(),
    OrderPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.all(0.1),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFe6e1e1),
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFe6e1e1),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                fillColor: Colors.black45,
                hintStyle: TextStyle(),
                hintText: 'Rechercher',
                filled: true,
                prefixIcon: IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Color(0xFFfd2c2c),
                    size: 30,
                  ),
                  onPressed: () {},
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Color(0xFFfd2c2c),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(child: _tabList.elementAt(_pageIndex)),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.amber,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        currentIndex: _pageIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Order',
          ),
        ],
      ),
    );
  }
}
