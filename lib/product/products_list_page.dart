import 'package:flutter/material.dart';
import 'package:shopping_cart_mobx/cart/bloc/cart_bloc.dart';
import 'package:shopping_cart_mobx/cart/view/cart_page.dart';
import 'package:shopping_cart_mobx/components/product_tile.dart';
import 'package:shopping_cart_mobx/product/model/product.dart';

class ProductsListPage extends StatefulWidget {
  const ProductsListPage({Key key}) : super(key: key);

  @override
  _ProductsListPageState createState() => _ProductsListPageState();
}

class _ProductsListPageState extends State<ProductsListPage> {
  List<Product> products = generatedList();
  CartBloc _cartBloc;

  @override
  void initState() {
    _cartBloc = CartBloc.getInstance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DARK UNICORN"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => CartPage()));
            },
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                  height: 10.0,
                  width: 10.0,
                );
              },
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                final item = products[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Scaffold(
                              appBar: AppBar(
                                title: Text(item.name),
                                centerTitle: true,
                              ),
                              body: Column(
                                children: <Widget>[
                                  Image.network(item.imageUrl,
                                      width: MediaQuery.of(context).size.width,
                                      height: 200.0),
                                  Text(item.description,
                                      textAlign: TextAlign.justify),
                                  RaisedButton.icon(
                                    label: Text("Add to Cart"),
                                    icon: Icon(Icons.shopping_cart),
                                    onPressed: () {
                                      _cartBloc.add(item);
                                    },
                                  )
                                ],
                              ),
                            )));
                  },
                  child: ProductTile(
                      imageUrl: Image.network(item.imageUrl),
                      productName: Text(item.name),
                      productPrice: Text("${item.price}")),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
