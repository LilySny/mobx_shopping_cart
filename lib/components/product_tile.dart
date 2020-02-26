import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final Widget imageUrl;
  final Widget productName;
  final Widget productPrice;
  const ProductTile(
      {Key key, this.imageUrl, this.productName, this.productPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        imageUrl,
        productName,
        Container(
          height: 8.0,
        ),
        productPrice
      ],
    );
  }
}
