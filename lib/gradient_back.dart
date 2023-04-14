import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget{

  String title = "Popular";
  double heightGradient = 250;
  double aligmentX = -0.9;
  double aligmentY = -0.45;
  double fontSizeTitle = 30;

  GradientBack(this.title, this.heightGradient, this.aligmentX, this.aligmentY,this.fontSizeTitle);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: heightGradient,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1)
          ],
          begin: FractionalOffset(0.2,0.0),
          end: FractionalOffset(1.0, 0.6),
            stops: [0.0, 0.6],
            tileMode: TileMode.clamp
        )
      ),
       child: Text(
         title,
         style: TextStyle(
           color:Colors.white,
           fontSize: fontSizeTitle,
           fontFamily: "Lato",
           fontWeight: FontWeight.bold,
         ),
       ),
      alignment: Alignment(aligmentX, aligmentY),
    );
    throw UnimplementedError();
  }
  
}