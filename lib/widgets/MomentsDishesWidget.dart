import 'package:flutter/material.dart';

class MomentsDishesWidget extends StatefulWidget {
  const MomentsDishesWidget ({Key? key}) : super(key: key);

  @override
  State<MomentsDishesWidget> createState() => _MomentsDishesWidgetState();
}

class _MomentsDishesWidgetState extends State<MomentsDishesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 265,
      width: double.infinity,
      child: Column(
        children: [
          MomentsDishesWidgetTitle(),
          Expanded(
            child: MomentsDishesModels(imageUrl: '',),
          ),
        ],
      ),
    );
  }
}

class MomentsDishesModels extends StatelessWidget {
  String imageUrl;

  MomentsDishesModels({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       // Navigator.push(context, ScaleRoute(page: FoodDetailsPage())
        //);
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 10,
              right: 5,
              top: 5,
              bottom: 5,
            ),
            decoration: BoxDecoration(boxShadow: [
              /*BoxShadow(
                 color: Color(0xFFfae3e2),
                 blurRadius: 15.0,
                 offset: Offset(0, 0.75),
               ),*/
            ]),
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: Container(
                width: 170,
                height: 210,
                child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            alignment: Alignment.topRight,
                            width: double.infinity,
                            padding: EdgeInsets.only(right: 5, top: 5,),
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFFfae3e2),
                                    blurRadius: 25.0,
                                    offset: Offset(0.0, 0.75),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.favorite,
                                color: Color(0xFFfb3132),
                                size: 16,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Center(
                            child: Image.asset(
                              imageUrl,
                              width: 130,
                              height: 140,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 3, left: 5,),
                          child: Row(
                            children: [
                              Icon(Icons.stars,
                                size: 10,
                                color: Color(0xFFfb3132),
                              ),
                              Icon(Icons.stars,
                                size: 10,
                                color: Color(0xFFfb3132),
                              ),
                              Icon(Icons.stars,
                                size: 10,
                                color: Color(0xFFfb3132),
                              ),
                              Icon(Icons.stars,
                                size: 10,
                                color: Color(0xFFfb3132),
                              ),
                              Icon(Icons.stars,
                                size: 10,
                                color: Color(0xFFfb3132),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MomentsDishesWidgetTitle extends StatelessWidget {
  const MomentsDishesWidgetTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('Popular Foods',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF3a3a3b),
              fontWeight: FontWeight.w300,
            ),),
          Text(
            'See all',
            style: TextStyle(
              fontSize: 16, color: Colors.blue, fontWeight: FontWeight.w100,
            ),
          )
        ],
      ),
    );
  }
}