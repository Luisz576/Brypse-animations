import 'package:flutter/material.dart';
import 'package:brypse_animations/models/product.dart';
import 'package:brypse_animations/widgets/tiles/product_tile.dart';
import 'package:brypse_animations/services/database.dart';

class ListOfProducts extends StatelessWidget{
  late final _db = Database();
  @override
  Widget build(BuildContext context){
    return FutureBuilder<List<Product>>(
      future: _db.getAllProducts(),
      builder: (context, snapshot) {
        if(snapshot.hasData)
          if(snapshot.data != null)
            if(snapshot.data!.length > 0)
              return Expanded(
                child: ListView(
                  children: snapshot.data!.map((product)=>ProductTile(product)).toList(),
                ),
              );
            else
              return Text("Nenhum produto cadastrado!",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              );
          else
            return Text("Erro ao carregar!",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            );
        else
          return Center(
            child: CircularProgressIndicator(color: Theme.of(context).primaryColor),
          );
      },
    );
  }
}