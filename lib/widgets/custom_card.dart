import 'package:flutter/material.dart';
import 'package:store_app/models/category_model.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/update_product_page.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.product, super.key});
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,

      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 45,
                color: Colors.grey.withValues(
                  alpha: 0.2,
                ), //here we use withValues instead of withOpesitiy because it is became deprecated
                spreadRadius: 0,
                offset: Offset(10, 10),
              ),
            ],
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                UpdateProduct.id,
                arguments: product,
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0, 12),
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(),
                    Row(
                      children: [
                        Text(
                          "\$${product.price}",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.favorite, color: Colors.red),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("${product.rate.rate.toString()}"),
                        Spacer(),
                        Text("${product.rate.count}"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: 40,
          top: -70,
          child: Image.network(
            product.image,
            height: 100,
            width: 100,
            fit: BoxFit.scaleDown,
            filterQuality: FilterQuality.high,
            semanticLabel: product.description,
          ),
        ),
      ],
    );
  }
}
