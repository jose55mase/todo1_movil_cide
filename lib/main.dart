import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


//--------------
import 'description_place.dart';
import 'gradient_back.dart';
import 'heade_nav.dart';
import 'home.dart';
import 'navegation.dart';
import 'productos/product_list.dart';

void main()=> runApp(MyApp());

/*

void main() {
  runApp(
    MaterialApp(
     home: MyHomePage()
    )
  );
}
*/


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  Navigation()
        //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


