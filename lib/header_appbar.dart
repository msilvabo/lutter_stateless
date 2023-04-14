import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_image_list.dart';

class HeaderAppbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido",250,-0.9,-0.45,30),
        CardImageList()
      ],
    );
    throw UnimplementedError();
  }

}