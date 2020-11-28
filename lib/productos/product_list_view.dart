import 'package:develop_flutter_app/productos/product_card.dart';
import 'package:flutter/material.dart';

class ProductListView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        children: [
          ProductCard(1,"Zapatos","345.456.00","https://images-na.ssl-images-amazon.com/images/I/81b6zZQEM0L._AC_UL1500_.jpg")
          ,ProductCard(2,"Bolso igm","126.456.00","https://hechodecuero.es/wp-content/uploads/2019/05/Michael-Kors-Junie-Medium-Shoulder-Bag.jpg")
          ,ProductCard(3,"Pantalos cintura alta","256.476.00","https://images-na.ssl-images-amazon.com/images/I/51oYCy86d0L._AC_UX385_.jpg")
          ,ProductCard(4,"Camisas dama","76.456.00","https://m.media-amazon.com/images/I/51NFMB8th9L.jpg")
        ],
      ),
    );
  }

}