import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ----
import 'button.dart';
import 'action_button_check.dart';

class NavImage  extends StatelessWidget{

  String pathUrl = "https://imgcdn.larepublica.co/i/1200/2017/12/05165632/Zapatos.jpg";

  NavImage(this.pathUrl);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(
        top: 80.0,
        left: 20.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(pathUrl)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    );

    return Stack(
      alignment: Alignment(0.9,1.1),
      children: <Widget>[
        card,
        ActionButtonCheck()
      ],
    );
  }


}