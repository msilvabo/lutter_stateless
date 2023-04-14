import 'package:flutter/material.dart';

class FloatingButtomProfile extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingButtomProfile();
    throw UnimplementedError();
  }
}

class _FloatingButtomProfile extends State<FloatingButtomProfile>{
  @override
  Widget build(BuildContext context) {

    final button_mark = Container(
      margin: EdgeInsets.only(
        top: 250,
        left: 30,
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFF5254D3),
        mini: true,
        tooltip: "Fav",
        onPressed: () {   },
        child: Icon(
          Icons.bookmark_border
        ),
      ),
    );

    final button_tv = Container(
      margin: EdgeInsets.only(
          top: 250,
          left: 25
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFF5254D3),
        mini: true,
        tooltip: "Fav",
        onPressed: () {   },
        child: Icon(
            Icons.tv
        ),
      ),
    );

    final button_add = Container(
      margin: EdgeInsets.only(
          top: 250,
          left: 25
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFF5254D3),
        mini: true,
        tooltip: "Fav",
        onPressed: () {   },
        child: Icon(
            Icons.add
        ),
      ),
    );

    final button_email = Container(
      margin: EdgeInsets.only(
          top: 250,
          left: 25
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFF5254D3),
        mini: true,
        tooltip: "Fav",
        onPressed: () {   },
        child: Icon(
            Icons.email_outlined
        ),
      ),
    );
    final button_people = Container(
      margin: EdgeInsets.only(
          top: 250,
          left: 25
      ),
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFF5254D3),
        mini: true,
        tooltip: "Fav",
        onPressed: () {   },
        child: Icon(
            Icons.people_alt_outlined
        ),
      ),
    );
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            button_mark,
            button_tv,
            button_add,
            button_email,
            button_people
          ],
        )
      ],
    );
    // TODO: implement build
    throw UnimplementedError();
  }
  
}