import 'package:develop_flutter_app/productos/product_add_view.dart';
import 'package:develop_flutter_app/productos/product_list_view.dart';
import 'package:flutter/material.dart';

import '../home.dart';

class ProductHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductHome();
  }
}


class _ProductHome extends State<ProductHome> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.article_outlined), text: "Lista",),
              Tab(icon: Icon(Icons.add_circle_outlined), text: "Crear"),
            ],
          ),
          title: Text('Productos'),
        ),
        body: TabBarView(
          children: [
            ProductListView()
            ,ProductAddView()
          ],
        ),
      ),
    );
  }
}