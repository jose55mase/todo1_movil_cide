import 'package:flutter/material.dart';

class ActionButtonCheck extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ActionButtonCheck();
  }
  
}

class _ActionButtonCheck extends State<ActionButtonCheck>{

  void onPressendFav(){
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("Trabajando"),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Colors.green,
      mini: true,
      tooltip: "Fav",
      onPressed: onPressendFav,
      child: Icon(
        Icons.zoom_out
      ),
    );
  }
  
}