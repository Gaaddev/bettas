import 'package:flutter/material.dart';

class WeeksMenu extends StatelessWidget {
    String day;
    String dayTimeFood;
    String foodName;
    String imageUrl;

    WeeksMenu(
        {Key? key,
          required this.day,
          required this.dayTimeFood,
          required this.foodName,
          required this.imageUrl})
        : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(),
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(),
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(),
        ),
      ],
    );
  }
}


