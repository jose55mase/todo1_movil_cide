import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// --------

import 'package:develop_flutter_app/nav_image.dart';

class ProductList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductList();
  }

}

class _ProductList extends State<ProductList>{

  List<dynamic> values=new List<dynamic>();

  getUser() async{
    http.Response response = await http.get(
        Uri.encodeFull('https://f76822b99942.ngrok.io/product/list'),
        headers: {"Accept": "application/json"}
    );

    setState(() {
      values = json.decode(response.body);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUser();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 150.0,
        child: ListView.builder(
            itemCount: values.length,
            itemBuilder: (BuildContext item, int index){
              return Card(
                    child: Column(
                      children: <Widget>[

                        Text(
                          "Codigo: ${values[index]["code"]}",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: -1,
                              child:
                                CircleAvatar(
                                  backgroundImage: NetworkImage("${values[index]["image"]}"),
                                ),
                            ),
                            Expanded(
                              flex: 2,
                              child:
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "${values[index]["description"]} fasfdsafsadfasfsafasf fasfdsafsadfasfsafasffasd ",
                                    style: TextStyle(
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                            ),


                            Icon(Icons.monetization_on),
                            Text(
                                "${values[index]["price"]}",
                                style: TextStyle(
                                    fontSize: 20.0
                                )
                            )
                          ],
                        )
                      ],

                    )
              );
            }
        )
    );
  }

}

/*

ListView(
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




       List<dynamic> values=new List<dynamic>();

  getUser() async{
    http.Response response = await http.get(
        Uri.encodeFull('http://192.168.1.1:8080/product/list'),
        headers: {"Accept":"application/json"}
    );
    setState((){

    });

    values = json.decode(response.body);
    print("(userData)---->${response.body}");

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView.builder(
        itemCount: values.length,
        itemBuilder: (BuildContext item, int index){
          return Card(
            child: Text("hols jose")
          );
        }
      )
    );


  }

 */