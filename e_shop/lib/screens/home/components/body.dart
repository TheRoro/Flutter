import 'package:e_shop/constants.dart';
import 'package:e_shop/models/Product.dart';
import 'package:e_shop/screens/details/details_screen.dart';
import 'package:e_shop/screens/home/components/categories.dart';
import 'package:flutter/material.dart';

import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text("Women",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold)),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: kDefaultPadding,
                    crossAxisSpacing: kDefaultPadding),
                itemBuilder: (context, index) => ItemCard(
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreen(product: products[index]))),
                      product: products[index],
                    )),
          ),
        )
      ],
    );
  }
}
