import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
    theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.red,
    ).copyWith(
      secondary: Colors.grey,
    ),
    textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black)),
  ),
  home: HomePage(),
  ));