import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/MomentsDishesWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Container(
            child: MomentsDishesWidget(),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            child: Text('Food of the day'),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
      bottomNavigationBar: //BottomNavBarWidget()
          null,
    );
  }
}
