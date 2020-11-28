import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'nav_image.dart';

class NavImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children:<Widget> [
          NavImage("https://imgcdn.larepublica.co/i/1200/2017/12/05165632/Zapatos.jpg"),
          NavImage("https://modaellos.com/wp-content/uploads/2011/05/chaquetas-hombre-1200x961.jpg"),
          NavImage("https://image.dhgate.com/0x0s/f2-albu-g9-M01-DA-45-rBVaWFzlhfSAS8xEAATsifiNIj8270.jpg/alta-cintura-de-los-pantalones-vaqueros-de.jpg"),
          NavImage("https://images-na.ssl-images-amazon.com/images/I/A1YwEeK9dJL._AC_UL500_.jpg"),
          NavImage("https://ae01.alicdn.com/kf/H37edd836590f4bdab92e57ad8edb153fC.jpg_q50.jpg")
        ],
      ),
    );
  }

}