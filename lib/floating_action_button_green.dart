import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
    throw UnimplementedError();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool _pressed = false;

  void onPressedFav(){
    setState(() {
      _pressed = !this._pressed;
    });

    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        this._pressed?"Agregado a tus Favorito":"Quitado de tus favoritos",
        textAlign: TextAlign.right,
      ),
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0XFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: Icon(
        this._pressed?Icons.favorite:Icons.favorite_border
      ),
      onPressed: onPressedFav,
    );
    throw UnimplementedError();
  }
  
}