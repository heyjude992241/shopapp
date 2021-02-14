import 'package:flutter/material.dart';
import 'package:shopapp/constants.dart';
import 'package:shopapp/models/Products.dart';
import 'package:shopapp/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //Gives us the total height and width of screen
    Size size = MediaQuery.of(context).size;
    print(size);
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.35),
                height: 400.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24))
                ),
              ),
              ProductTitleWithImage(product: product)
            ],
          ),
        )
      ],
    ),
    );
  }
}

