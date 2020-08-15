import 'package:flutter/material.dart';
import 'package:theertha/Product.dart';

import 'constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
