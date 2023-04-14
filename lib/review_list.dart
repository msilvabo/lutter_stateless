import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review("assets/img/foto.jpg", "Varuna Yasas", "1 review - 5 photo", "There is an amazing place in Sri Lanka",4),
        new Review("assets/img/foto2.jpg", "Anahi Salgado", "2 review - 3 photo", "There is an amazing place in Sri Lanka",2),
        new Review("assets/img/foto3.jpg", "Gissele Thomas", "2 review - 6 photo", "There is an amazing place in Sri Lanka",3),
      ],
    );
    throw UnimplementedError();
  }
  
}