import 'package:flutter/material.dart';
import 'home.dart';
import 'productos/product_home.dart';


class Navigation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Navigation();
  }
  
}

class _Navigation extends State<Navigation>{

  int indexNavar = 0;

  final List<Widget> widgetsChildren = [
    Home()
    ,ProductHome()
  ];

  void onTapTapped(int index){
    setState(() {
      indexNavar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(

      body: widgetsChildren[indexNavar],

          resizeToAvoidBottomInset: true,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black12,
          primaryColor: Colors.purple

        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexNavar,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home)
              ,title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.pending_actions_rounded),
                title: Text("")
            )
          ],
        ),
      ),
    );


  }
  
}