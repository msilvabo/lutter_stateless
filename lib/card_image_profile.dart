import 'package:flutter/material.dart';
import 'floating_action_button_green.dart';

class CardImageProfile extends StatelessWidget{

  String pathImagen = "assets/img/paisaje1.jpg";
  String title = "Knuckles Mountains Range";
  String detail1 = "Hiking, Water tall hunting, Natural bath";
  String detail2 = "Scenery & Photography";
  String detailRed = "Steps 123,123,123";

  CardImageProfile(this.pathImagen, this.title, this.detail1, this.detail2, this.detailRed);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final TextRed = Padding(
      padding: EdgeInsets.only(top: 8),
      child: Text(
        detailRed,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.deepOrangeAccent.withOpacity(0.7)
        ),
      ),
    );
    final Textdetail2 = Text(
      detail2,
      style: TextStyle(
        fontFamily: "Lato",
        fontSize: 12,
        color: Colors.black38,
      ),
    );

    final Textdetail1 = Text(
      detail1,
      style: TextStyle(
        fontFamily: "Lato",
        fontSize: 12,
        color: Colors.black38,
      ),
    );


    final textTitle = Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

    final cardText = Container(
      padding: EdgeInsets.only(left: 20,top: 15),
      height: 110,
      width: 270,
      margin: EdgeInsets.only(top: 160, left: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0, 5)
          )
        ]
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textTitle,
            Textdetail1,
            Textdetail2,
            TextRed
          ],
      )
    );

    final ContainerButtonGren = Container(
      padding: EdgeInsets.only(right: 75,top: 230),
      alignment: Alignment.bottomRight,
      child: FloatingActionButtonGreen(),
    );

    final card = Container(
        height: 200,
        width: 360,
        margin: EdgeInsets.only(
            top: 30,
            left: 0
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
      //alignment: Alignment(0.15, 1.15),
      children: <Widget>[
        card,
        cardText,
        ContainerButtonGren
      ],
    );
    //card;
    throw UnimplementedError();
  }
}