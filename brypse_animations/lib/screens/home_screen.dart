import 'package:flutter/material.dart';
import 'package:brypse_animations/widgets/list_of_products.dart';
import 'package:brypse_animations/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Theme.of(context).backgroundColor,
      child: Padding(
        padding: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("BRYPSE",
              style: TextStyle(
                fontSize: 38.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 5.0,
                color: Theme.of(context).primaryColor
              ),
            ),
            Text("TUTS",
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w300,
                letterSpacing: 3.0,
                color: Theme.of(context).primaryColor
              ),
            ),
            SizedBox(height: 20.0,),
            Text("Quer as tendências mais atuais? A Brypse oferece os melhores estilos para você",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0,),
            SearchBar(),
            SizedBox(height: 20.0,),
            ListOfProducts(),
          ],
        ),
      ),
    );
  }
}