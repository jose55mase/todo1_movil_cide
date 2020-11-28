import 'package:flutter/material.dart';

class Button extends StatelessWidget{

  String nameBtn = "BTn";

  Button(this.nameBtn);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Navengando productos"),
          )
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0
        ),
        height: 50.0,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: [
              Colors.brown,
              Colors.grey
            ],
            begin: FractionalOffset(0.2,0.0),
            end: FractionalOffset(0.2,0.0),
            tileMode: TileMode.clamp
          )
        ),
        child: Center(
          child: Text(
            nameBtn,
            style: TextStyle(
              fontSize: 18.0
            ),
          ),
        ),
      ),
    );
  }

}