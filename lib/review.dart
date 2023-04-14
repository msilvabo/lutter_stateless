import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  String path = "assets/img/foto.jpg";
  String name = "Varuna Yasas";
  int stars = 1;
  String details = "1 review - 5 photo";
  String comment = "There is an amazing place in Sri Lanka";

  Review(this.path, this.name, this.details, this.comment, this.stars);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star = Container(
      margin: EdgeInsets.only(
        top: 2,
        left: 1
      ),
      child: Icon(
        Icons.star,
        size: 20,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
          top: 2,
          left: 1
      ),
      child: Icon(
        Icons.star_border,
        size: 20,
        color: Color(0xFFf2C611),
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900,
          color: Color(0xFFa3a5a7),
        ),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13,
            fontFamily: "Lato",
            color: Color(0xFFa3a5a7),
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17,
          fontFamily: "Lato"
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
            Row(
              children: <Widget>[
                (stars>=1)?star:star_border,
                (stars>=2)?star:star_border,
                (stars>=3)?star:star_border,
                (stars>=4)?star:star_border,
                (stars>=5)?star:star_border,
              ],
            ),
          ],
        ),
        userInfo,
        userComment
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top:20,
        left: 20
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(path)
        )
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );

    throw UnimplementedError();
  }

}