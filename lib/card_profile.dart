import 'package:flutter/material.dart';

class CardProfile extends StatelessWidget{
  String path = "assets/img/foto.jpg";
  String name = "Varuna Yasas";
  int stars = 1;
  String details = "1 review - 5 photo";
  String comment = "correo@correo.com";

  //CardProfile(this.path, this.name, this.details, this.comment, this.stars);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900,
          color: Color(0xFFa3a5a7),
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
          top: 30,
          left: 20
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            fontFamily: "Lato",
            color: Colors.white
        ),
      ),
    );


    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            userName,
          ],
        ),
        userComment
      ],
    );

    final photo = Container(

      margin: EdgeInsets.only(
          top: 10,
          left: 20
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(width: 5,color: Colors.white),
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(path)
          )
      ),
    );

    return Positioned(
        top:-70,
        child: Container(
          height: 110,
          margin: EdgeInsets.only(
              top: 200,
              left: 20
          ),
          child:
          Row(
            children: <Widget>[
              photo,
              userDetails
            ],
          ),
    )
    );


    throw UnimplementedError();
  }

}