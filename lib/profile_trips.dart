import 'package:app_inicial/card_image_profile.dart';
import 'package:app_inicial/card_profile.dart';
import 'package:flutter/material.dart';
import 'car_image_profile_list.dart';
import 'gradient_back.dart';
import 'floating_buttom_profile.dart';

class ProfileTrips extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Stack(
    children: <Widget>[
      GradientBack("Profile",450,-0.8,-0.55,34),
      CardProfile(),
      FloatingButtomProfile(),
      CardImageProfileList()
    ],
    );
    throw UnimplementedError();
  }
}