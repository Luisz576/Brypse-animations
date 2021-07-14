import 'package:brypse_animations/models/product.dart';
import 'dart:core';
import 'dart:async';

class Database{
  Future<List<Product>> getAllProducts(){
    return Future.delayed(Duration(seconds: 2), (){
      return [
        Product("Casaco madeira", 10.5, "https://cdn.pixabay.com/photo/2015/03/26/09/54/person-690547_960_720.jpg"),
        Product("Suéter nevado", 20.25, "https://cdn.pixabay.com/photo/2016/12/19/21/36/woman-1919143_960_720.jpg"),
        Product("Estilo Conforto", 14.75, "https://cdn.pixabay.com/photo/2017/02/08/02/56/booties-2047596_960_720.jpg"),
        Product("De volta aos anos 90", 16.75, "https://cdn.pixabay.com/photo/2018/10/10/21/31/woman-in-menswear-3738414_960_720.jpg"),
        Product("Negócios Modernos", 15.0, "https://cdn.pixabay.com/photo/2016/11/29/09/38/adult-1868750_960_720.jpg"),
      ];
    });
  }
}