import 'package:flutter/material.dart';

import 'description_place.dart';
import 'heade_nav.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace(" Esto es una pequena descripcion para Probar,Esto es una pequena descripcion paraEsto es unaEsto es una pequena descripcion para Probar,Esto es una pequena descripcion paraEsto es unaEsto es una pequena Esto es una pequena descripcion para Probar,Esto es una pequena descripcion paraEsto es unaEsto es una pequena descripcion para Probar,Esto es una pequena descripcion paraEsto es unaEsto es una pequena descripcion para Probar,Esto es una pequena descripcion paraEsto es unaEsto es una pequena descripcion para Probar,Esto es una pequena descripcion paraEsto es unaEsto es una pequena descripcion para Probar,Esto es una pequena descripcion paraEsto es una descripcion para Probar,Esto es una pequena descripcion paraEsto es una pequena descripcion para Probar,Esto es una pequena descripcion paraEsto es una pequena descripcion para Probar,Esto es una pequena descripcion para Esto es una pequena descripcion para Probar,Esto es una pequena descripcion para Probar,Esto es una pequena descripcion para Probar,Esto es una pequena descripcion para Probar,Esto es una pequena descripcion para Probar,Esto es una pequena descripcion para Probar")
          ],
        ),
        HeadeNav(),
        //GradientBack("Tienda"),
      ],
    );
  }

}