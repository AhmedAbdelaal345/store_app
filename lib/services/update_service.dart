import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/helper/api_helper.dart';
import 'package:store_app/models/product_model.dart';

class UpdateService {
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
    required int id,
  }) async {
    print("Product id: $id");
    Map<String, dynamic> data = await Api().put(
      url: "https://fakestoreapi.com/products/$id",
      body: {
        "id": id.toString(),
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category,
      },
    );

    return ProductModel.fromJson(data);
  }
}
