import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';

class CardImage extends StatelessWidget{

  String pathImagen = "assets/img/paisaje1.jpg";

  CardImage(this.pathImagen);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    final card = Container(
      height: 350,
      width: 250,
      margin: EdgeInsets.only(
        top: 80,
        left: 20
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImagen),
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0, 7)
          )
        ]
      )
    );

    return Stack(
      alignment: Alignment(0.85, 1.15),
      children: <Widget>[
        card,
        FloatingActionButtonGreen()
      ],
    );
    //card;
    throw UnimplementedError();
  }
}