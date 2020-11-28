import 'package:develop_flutter_app/gradient_back.dart';
import 'package:flutter/material.dart';
import 'nav_image_list.dart';

class HeadeNav extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Nuetros Productos"),
        NavImageList()
      ],
    );
  }
}