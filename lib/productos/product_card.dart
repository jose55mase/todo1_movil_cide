import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget{

  int count = 0;
  String name = "";
  String price = "";
  String urlIcon = "";

  ProductCard(this.count, this.name, this.price, this.urlIcon);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        padding: EdgeInsets.all(15.10),
        children:<Widget> [
          Card(
            child: Row(
              children: <Widget>[
                Text(
                  "${count}",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500
                  ),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(urlIcon),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("${name}  ${price}"),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }

}