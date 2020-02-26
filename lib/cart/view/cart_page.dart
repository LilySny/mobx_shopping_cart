import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shopping_cart_mobx/cart/bloc/cart_bloc.dart';
import 'package:shopping_cart_mobx/cart/bloc/cart_item_bloc.dart';
import 'package:shopping_cart_mobx/components/cart_item_tile.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Observer(builder: (_) {
              print(_cartBloc.items);
              return ListView.builder(
                  itemCount: _cartBloc.items.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = _cartBloc.items[index];
                    return Observer(builder: (_) {
                      return CartItemTile(
                        cartItem: item,
                        leading: Image.network("${item.product.imageUrl}"),
                        price: Text("${item.total}"),
                        title: Text("${item.product.name}"),
                      );
                    });
                  });
            }),
          ),
          Container(
            color: Colors.grey[200],
            child: Observer(builder: (_) {
             return  Row(
                children: <Widget>[
                  const Text("Total:"),
                  const Spacer(),
                  Text("${_cartBloc.totalPrice}"),
                  Text("Items: ${_cartBloc.items.length}")
                ],
              );
            }),
          ),
          FlatButton(
            onPressed: () {},
            child: Text("Confirmar Compra"),
          )
        ],
      ),
    );
  }
}
