import 'package:ecommerceappui/models/Product.dart';
import 'package:flutter/material.dart';

import '../product_card.dart';
import '../sizeconfig.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Product",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text("See More")
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(width: width / 12),
            ],
          ),
        )
      ],
    );
  }
}
