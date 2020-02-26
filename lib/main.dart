import 'package:flutter/material.dart';
import 'package:shopping_cart_mobx/components/product_tile.dart';
import 'package:shopping_cart_mobx/product/products_list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DU Store',
      theme: ThemeData(
          primaryColor: Colors.deepPurple[300],
          accentColor: Colors.purple[900],
          primaryColorBrightness: Brightness.dark,
          accentColorBrightness: Brightness.dark),
      home: ProductsListPage(),
    );
  }
}
