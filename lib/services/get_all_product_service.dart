import 'dart:convert';
import 'dart:core';

import 'package:store_app/helper/api_helper.dart';
import 'package:store_app/models/category_model.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class AllProductService {
  Future<List<ProductModel>> getAllProduct() async {
    http.Response response = await Api().get(url:"https://fakestoreapi.com/products");
   
      List<dynamic> data = jsonDecode(response.body);
      List<ProductModel> productList = [];
      for (int i = 0; i < data.length; i++) {
        productList.add(ProductModel.fromJson(data[i]));
      }
      return productList;
      
    }
  }

