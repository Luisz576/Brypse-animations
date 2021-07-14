import 'package:flutter/material.dart';
import 'package:brypse_animations/models/product.dart';

class ProductTile extends StatelessWidget{
  final Product product;
  ProductTile(this.product);
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).hintColor,
          width: 2.0
        ),
        borderRadius: BorderRadius.circular(16)
      ),
      child: InkWell(
        onTap: (){
          showDialog(
            context: context,
            builder: (BuildContext context){
              return AlertDialog(
                title: Text(product.name),
                actions: [
                  TextButton(
                    child: Text("OK"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            }
          );
        },
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Image.network(product.imageUrl,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.width / 2,
                ),
              ),
              SizedBox(height: 15.0,),
              Text(product.name,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 5,),
              Text("R\$${product.price}",
                style: TextStyle(
                  color: Theme.of(context).accentColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}