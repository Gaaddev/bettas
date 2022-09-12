import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         const Padding(
           padding: EdgeInsets.only(top: 20.0),
            child:
        Center(
          child: Text(
              'Menu de la Semaine',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
        ),
        Container(),
        const BottomMenu(),
      ],
    );
  }
}

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Align(
            alignment: Alignment(0.0, 1.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              child: Row(),
            ),
          ),
        ),
      ],
    );
  }
}
