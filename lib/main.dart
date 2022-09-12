import 'package:flutter/material.dart';
import '../pages/StartPage.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey,
        ).copyWith(
          secondary: Colors.orangeAccent,
        ),
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black)),
      ),
      home: const StartPage(),
    ));
