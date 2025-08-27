import 'dart:convert';

import 'package:http/http.dart';
import 'package:store_app/helper/api_helper.dart';

class AllCategoryService {
  Future<List<dynamic>> getAllCategory() async {
    Response response = await Api().get(
     url:  "https://fakestoreapi.com/products/categories",
    );
      List<dynamic> data = jsonDecode(response.body);
      return data;
  }
}
