import 'package:app_inicial/card_image_profile.dart';
import 'package:flutter/material.dart';

class CardImageProfileList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      margin: EdgeInsets.only(top:300),
      width: 650,
      child: ListView(
        padding: EdgeInsets.only(top:1,left: 20, right: 20),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CardImageProfile("assets/img/paisaje1.jpg",
              "Knuckles Mountains Range","Hiking, Water tall hunting, Natural bath",
              "Scenery & Photography",
              "Steps 123,123,123"),
          CardImageProfile("assets/img/paisaje2.jpg",
              "Knuckles Lake","Hiking, Water tall hunting, Natural bath",
              "Scenery & Photography",
              "Steps 123,123,123"),
          CardImageProfile("assets/img/paisaje3.jpg",
              "Knuckles Forest Range","Hiking, Water tall hunting, Natural bath",
              "Scenery & Photography",
              "Steps 123,123,123"),
          CardImageProfile("assets/img/paisaje4.jpg",
              "Knuckles Green Field Range","Hiking, Water tall hunting, Natural bath",
              "Scenery & Photography",
              "Steps 123,123,123"),
        ],
      ),
    );
    throw UnimplementedError();
  }

}