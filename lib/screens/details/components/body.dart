import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopapp/constants.dart';
import 'package:shopapp/models/Products.dart';
import 'package:shopapp/screens/details/components/product_title_with_image.dart';
import 'package:shopapp/screens/details/components/colors_and_size.dart';

import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';

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
                padding: EdgeInsets.only(top: size.height * 0.12, left: kDefaultPadding, right: kDefaultPadding),
                // height: 400.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24))
                ),
                child: Column(
                  children: [
                    ColorAndSize(product: product),
                    SizedBox(height: kDefaultPadding/2,),
                    Description(product: product),
                    SizedBox(height: kDefaultPadding/2,),
                    CounterWithFavBtn(),
                    SizedBox(height: kDefaultPadding/2,),
                    AddToCart(product: product)
                  ],
                )
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

