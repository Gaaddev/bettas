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
    return Container(
        height: 650,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 1,
            ),
            Container(
              height: 450,
                child: const MomentsDishesWidget(),
            ),
            Container(
              padding: const EdgeInsets.only(left: 100,),
              height: 30,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Food of the day'),
                  Card(
                    color: Colors.white70,
                    //elevation: 0,
                    child: Align(
                      //alignment: Alignment.topRight,
                      child: Container(
                        padding: const EdgeInsets.only(
                          top: 3,
                          left: 5,
                        ),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.stars,
                              size: 20,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.stars,
                              size: 20,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.stars,
                              size: 20,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.stars,
                              size: 20,
                              color: Colors.amberAccent,
                            ),
                            Icon(
                              Icons.stars,
                              size: 20,
                              color: Colors.amberAccent,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
