import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

// --------

import 'package:develop_flutter_app/nav_image.dart';

class ProductList extends StatelessWidget{

  List<dynamic> values=new List<dynamic>();

  getUser() async{
    http.Response response = await http.get(
        Uri.encodeFull('https://ccf565321df0.ngrok.io/user/list'),
        headers: {"Accept":"application/json"}
    );

    values = json.decode(response.body);
    print("(userData)---->${response.body}");
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView(
        padding: EdgeInsets.all(35.10),
        children:<Widget> [
          Card(
            child: Row(
              children: <Widget>[
                Text(
                  "${1}",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500
                  ),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://png.pngtree.com/png-vector/20190704/ourmid/pngtree-businessman-user-avatar-free-vector-png-image_1538405.jpg"),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Desarrollador Joxe luis CC"),
                )
              ],
            ),
          ),

        ],
      ),
    );


  }



}
/*

Card(
        child: Row(
          children: <Widget>[
            Text(
              "${1}",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500
              ),
            ),
            CircleAvatar(
              backgroundImage: NetworkImage("https://png.pngtree.com/png-vector/20190704/ourmid/pngtree-businessman-user-avatar-free-vector-png-image_1538405.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Documentos estan"),
            )
          ],
        ),
      )

 */