import 'package:flutter/material.dart';

//-----
import 'productos/product_list.dart';
import 'button.dart';


class DescriptionPlace extends StatelessWidget{

  String description;

  DescriptionPlace(this.description);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final star_half= Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Colors.amber,
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final descriptionBody = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: Text(
        description,

      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            "Element item",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star
            ,star
            ,star
            ,star_half
          ],
        ),

      ],
    );
    return Column(
      children:<Widget> [
        title_stars
        ,descriptionBody
        ,Button("Ver productos")
        ,ProductList()

      ],
    );
    //throw UnimplementedError();
  }
  
}