import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar({Key key, Widget title})
      : super(
          key: key,
          automaticallyImplyLeading: false,
          title: titleContent,
          backgroundColor: Color.fromRGBO(43, 50, 79, 1.0),
          centerTitle: true,
          toolbarHeight: 90,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
          //leading: Icon(Icons.menu)
        );
}

Widget titleContent = Container(
  height: 90,
  child: Stack(
    alignment: Alignment.center,
    fit: StackFit.expand,
    children: [
      Positioned(left: 0, child: Icon(Icons.menu)),
      Positioned(bottom: 30, child: logoImage),
      Positioned(width: 320, bottom: 0, child: findStore)
    ],
  ),

/*   child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,

    children: [logoImage, findStore],
  ), */
);

Widget logoImage = Container(
    margin: EdgeInsets.only(bottom: 5), child: Image.asset('images/logo.png'));

Widget findStore = Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    color: Color.fromRGBO(85, 91, 114, 1.0),
    child: Padding(
      padding: EdgeInsets.only(top: 2, bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.location_on_outlined, size: 15),
          Flexible(          
              child: Container(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              'Encontre sua farmácia',
              style: TextStyle(color: Colors.white),
            ),
          ))
        ],
      ),
    ));
