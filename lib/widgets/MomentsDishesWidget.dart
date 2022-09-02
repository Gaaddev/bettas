import 'package:flutter/material.dart';
import '../widgets/MomentsDishesWidget.dart';
import 'MomentsDishesTypes.dart';

class MomentsDishesWidget extends StatefulWidget {
  const MomentsDishesWidget({Key? key}) : super(key: key);

  @override
  State<MomentsDishesWidget> createState() => _MomentsDishesWidgetState();
}

class _MomentsDishesWidgetState extends State<MomentsDishesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: 500,
      width: 400,
      child: Column(
        children: [
          MomentsDishesWidgetTitle(),
          Container(
            height: 480,
              child: MomentsDishesModels(
                 imageUrl: '',
              ),
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
          SizedBox(
            height: 8,
          ),
          Container(
            child: MomentsDishesTypes(),
            //Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //  children: [
            //  MomentsDishesTypes(),
            //    Align(
            //      alignment: Alignment.centerRight,
            //    child: Center(
            //        child: Image.asset(
            //          'images/jollof_rice.png',
            //          width: 80,
            //          height: 80,
            //        ),
            //      ),
            //    ),
            //    Align(
            //      alignment: Alignment.centerLeft,
            //      child: Center(
            //        child: Image.asset(
            //          'images/grillades_plat.png',
            //          width: 80,
            //          height: 80,
            //        ),
            //      ),
            //    ),
            //  ],
          //  ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 350,
            height: 320,
            padding: const EdgeInsets.all(3.0),
            child: Card(
              color: Colors.white54,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(7),
                ),
              ),
                  child: Image.asset(
                    'images/jollof_t.png',
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
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 5,
        bottom: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Moment\'s Dishes',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xFF3a3a3b),
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            'See all',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w100,
            ),
          )
        ],
      ),
    );
  }
}
