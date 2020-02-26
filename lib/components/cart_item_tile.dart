import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:shopping_cart_mobx/cart/bloc/cart_bloc.dart';
import 'package:shopping_cart_mobx/cart/bloc/cart_item_bloc.dart';

class CartItemTile extends StatefulWidget {
  final CartItem cartItem;
  final Widget leading;
  final Widget title;
  final Widget price;

  CartItemTile(
      {@required this.cartItem,
      @required this.leading,
      @required this.title,
      @required this.price});

  @override
  _CartItemTileState createState() => _CartItemTileState();
}

class _CartItemTileState extends State<CartItemTile> {
  CartBloc _cartBloc;

  @override
  void initState() {
    _cartBloc = CartBloc.getInstance();
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 100.0,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[300],
          child: Row(
            children: <Widget>[
              widget.leading,
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                  widget.title,
              widget.price,
               ],
             ),
              Container(
                  height: 60.0,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {
                          if(widget.cartItem.quantity > 1 )
                          widget.cartItem.decrement();
                        },
                      ),
                      Observer(builder: (_) {
                        return Text("${widget.cartItem.quantity}", style: TextStyle(fontSize: 12.0),);
                      }),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {
                          widget.cartItem.increment();
                        },
                      ),
                    ],
                  )),
                  IconButton(
                        icon:  Icon(Icons.close),
                        onPressed: (){
                          _cartBloc.remove(widget.cartItem);
                        },
                      )
            ],
          ),
        );
  }
}
