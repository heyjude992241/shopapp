import 'package:flutter/material.dart';
import 'package:shopapp/constants.dart';
import 'package:shopapp/models/Products.dart';
import 'package:shopapp/screens/details/details_screen.dart';
import 'categories.dart';
import 'item_card.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              "Women", 
              style: Theme.of(context)
              .textTheme.headline5
              .copyWith(fontWeight: FontWeight.bold)
            ),
          ),
          Categories(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailsScreen(product: products[index],)
                  )),
                ),
              ),
            )
          )
        ],
      );
  }
}

