import 'package:http/http.dart';
import 'package:store_app/helper/api_helper.dart';
import 'package:store_app/models/category_model.dart';
import 'package:store_app/models/product_model.dart';

class GetCategoryService {
  Future<List<dynamic>> getCategory({required String category}) async {
    Response response = await Api().get(
      url: "https://fakestoreapi.com/products/category/$category",
    );
      List<dynamic> data = [response.body];
      List<ProductModel> categoryList = [];
      for (int i = 0; i < data.length; i++) {
        categoryList.add(ProductModel.fromJson(data[i]));
      }
      return categoryList;
     }
}
